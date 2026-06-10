#!/usr/bin/env python3
"""Audit TallerGitHub IBM i repository rules."""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass
from pathlib import Path


@dataclass
class Finding:
    severity: str
    rule: str
    path: str
    message: str


REQUIRED_DOCS = [
    "Documentacion_IBMi/Requerimientos/requerimientos_taller.md",
    "Reglas/Revision_IBMi.md",
    "Documentacion_IBMi/Base_Datos/estructura_bd.md",
    "Documentacion_IBMi/ILE Reference Guide.pdf",
    "Documentacion_IBMi/Working with JSON in RPG.pdf",
    "Rules.mk",
    "iproj.json",
    ".vscode/tasks.json",
    ".vscode/actions.json",
]

REQUIRED_SOURCES = [
    "GLBLN_RECON.SQLRPGLE",
    "JSON_OUTPUT.SQLRPGLE",
    "GLBLN_DATA.RPGLE",
    "JSON_UTILS.RPGLE",
    "GLBLN_BATCH.CLLE",
]

SQL_REQUIRED_PATTERNS = {
    "metadata_header": re.compile(r"Nombre de la Tabla:.*DESCRIPCI[OÓ]N:.*Objetivo:.*Tipo de Tabla:.*Origen de los Datos:.*Permanencia de Datos:.*Uso de los datos:.*Hecho por:.*Fecha:.*Proyecto:", re.I | re.S),
    "create_or_replace": re.compile(r"\bCREATE\s+OR\s+REPLACE\s+TABLE\b", re.I),
    "system_alias": re.compile(r"\bFOR\s+COLUMN\b", re.I),
    "primary_key": re.compile(r"\bCONSTRAINT\s+\w+\s+PRIMARY\s+KEY\b", re.I),
    "rcdfmt": re.compile(r"\bRCDFMT\b", re.I),
    "comment_table": re.compile(r"\bCOMMENT\s+ON\s+TABLE\b", re.I),
    "label_table": re.compile(r"\bLABEL\s+ON\s+TABLE\b", re.I),
    "comment_column": re.compile(r"\bCOMMENT\s+ON\s+COLUMN\b", re.I),
    "label_column": re.compile(r"\bLABEL\s+ON\s+COLUMN\b", re.I),
    "label_text": re.compile(r"\bLABEL\s+ON\s+COLUMN\b.*\bTEXT\s+IS\b", re.I | re.S),
}

FORBIDDEN_PATTERNS = {
    "CRTPF": re.compile(r"\bCRTPF\b", re.I),
    "CRTLF": re.compile(r"\bCRTLF\b", re.I),
    "DDS record spec": re.compile(r"^\s*A\s+R\s+", re.I | re.M),
}

PLACEHOLDER_PATTERNS = {
    "N/A": re.compile(r"\bN/A\b", re.I),
    "blank DESCRIPCION": re.compile(r"DESCRIPCI[OÓ]N:\s*$", re.I | re.M),
    "blank Objetivo": re.compile(r"Objetivo:\s*$", re.I | re.M),
    "blank Proyecto": re.compile(r"Proyecto:\s*$", re.I | re.M),
    "blank Fecha": re.compile(r"Fecha:\s*$", re.I | re.M),
}


def rel(path: Path, root: Path) -> str:
    return path.relative_to(root).as_posix()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8", errors="replace")


def count_columns(sql: str) -> int:
    match = re.search(r"\bCREATE\s+OR\s+REPLACE\s+TABLE\s+[\w.]+\s*\((.*)\)\s*RCDFMT\b", sql, re.I | re.S)
    if not match:
        return 0
    body = match.group(1)
    return len(re.findall(r"\bFOR\s+COLUMN\b", body, re.I))


def audit_required_docs(root: Path, findings: list[Finding]) -> None:
    for doc in REQUIRED_DOCS:
        if not (root / doc).exists():
            findings.append(Finding("High", "required-file", doc, "Required project reference/configuration file is missing."))
    for source in REQUIRED_SOURCES:
        if not (root / source).exists():
            findings.append(Finding("High", "required-source", source, "Required IBM i architecture source file is missing."))


def audit_sql(root: Path, findings: list[Finding]) -> None:
    for path in sorted((root / "Databases").glob("*.SQL")):
        text = read_text(path)
        path_label = rel(path, root)
        for rule, pattern in SQL_REQUIRED_PATTERNS.items():
            if not pattern.search(text):
                findings.append(Finding("High", f"sql-required-{rule}", path_label, f"Missing required SQL pattern: {rule}."))
        for rule, pattern in FORBIDDEN_PATTERNS.items():
            if pattern.search(text):
                findings.append(Finding("Critical", f"forbidden-{rule}", path_label, f"Forbidden PF/LF/DDS pattern detected: {rule}."))
        for rule, pattern in PLACEHOLDER_PATTERNS.items():
            if pattern.search(text):
                findings.append(Finding("High", f"placeholder-{rule}", path_label, f"Placeholder or blank metadata detected: {rule}."))

        column_count = count_columns(text)
        if column_count:
            comment_count = len(re.findall(r"\bCOMMENT\s+ON\s+COLUMN\b", text, re.I))
            label_sections = len(re.findall(r"\bLABEL\s+ON\s+COLUMN\b", text, re.I))
            text_sections = len(re.findall(r"\bLABEL\s+ON\s+COLUMN\b.*?\bTEXT\s+IS\b", text, re.I | re.S))
            if comment_count < column_count:
                findings.append(Finding("High", "sql-comment-coverage", path_label, f"Column comments incomplete: {comment_count}/{column_count}."))
            if label_sections < 2:
                findings.append(Finding("High", "sql-label-coverage", path_label, "Expected short labels and TEXT labels for columns."))
            if text_sections < 1:
                findings.append(Finding("High", "sql-text-label-coverage", path_label, "Missing LABEL ON COLUMN ... TEXT IS section."))


def audit_build_config(root: Path, findings: list[Finding]) -> None:
    iproj = root / "iproj.json"
    if iproj.exists():
        try:
            data = json.loads(read_text(iproj))
        except json.JSONDecodeError as exc:
            findings.append(Finding("High", "iproj-json", "iproj.json", f"Invalid JSON: {exc}."))
            data = {}
        if data.get("objlib") != "LANUZACX2" or data.get("curlib") != "LANUZACX2":
            findings.append(Finding("Medium", "iproj-library", "iproj.json", "Expected objlib/curlib LANUZACX2 for PUB400 setup."))
        if data.get("buildSystem") != "tobi":
            findings.append(Finding("Medium", "iproj-buildsystem", "iproj.json", "Expected buildSystem=tobi."))
        if data.get("buildCommand") != "makei build":
            findings.append(Finding("High", "iproj-build-command", "iproj.json", "Expected buildCommand makei build for Project Explorer/TOBi."))
        if data.get("buildObjectCommand") != "makei b -t {object}":
            findings.append(Finding("Medium", "iproj-object-build", "iproj.json", "Expected buildObjectCommand makei b -t {object}."))
        if data.get("compileCommand") != "makei compile -f {filename}":
            findings.append(Finding("Medium", "iproj-compile-command", "iproj.json", "Expected compileCommand makei compile -f {filename}."))

    tasks = root / ".vscode" / "tasks.json"
    if tasks.exists():
        text = read_text(tasks)
        if "makei" not in text:
            findings.append(Finding("High", "vscode-makei", ".vscode/tasks.json", "No makei task found."))
        if "makei all" in text:
            findings.append(Finding("High", "vscode-makei-all", ".vscode/tasks.json", "Use makei build instead of makei all for TOBi project builds."))
        if "/home/LANUZACX/NovaSorc" not in text:
            findings.append(Finding("High", "vscode-ifs-path", ".vscode/tasks.json", "Confirmed PUB400 deploy path /home/LANUZACX/NovaSorc not found."))
        if "NosaSorc" in text:
            findings.append(Finding("High", "vscode-ifs-path-typo", ".vscode/tasks.json", "Found incorrect IFS path typo NosaSorc. Use /home/LANUZACX/NovaSorc."))

    settings = root / ".vscode" / "settings.json"
    if settings.exists():
        try:
            data = json.loads(read_text(settings))
        except json.JSONDecodeError as exc:
            findings.append(Finding("High", "vscode-settings-json", ".vscode/settings.json", f"Invalid JSON: {exc}."))
            data = {}
        if data.get("IBM i Testing.productLibrary") != "RPGUNIT":
            findings.append(Finding("Medium", "testing-product-library", ".vscode/settings.json", "Expected IBM i Testing.productLibrary RPGUNIT."))
        if data.get("IBM i Testing.testSourceFiles") != ["QTESTSRC"]:
            findings.append(Finding("Medium", "testing-source-files", ".vscode/settings.json", "Expected IBM i Testing.testSourceFiles to be [QTESTSRC]."))
        stub_preferences = data.get("IBM i Testing.testStubPreferences", {})
        if stub_preferences.get("Test Source Directory") != "qtestsrc":
            findings.append(Finding("Medium", "testing-stub-directory", ".vscode/settings.json", "Expected generated local tests under qtestsrc."))
        if stub_preferences.get("Test Source File") != "QTESTSRC":
            findings.append(Finding("Medium", "testing-stub-source-file", ".vscode/settings.json", "Expected generated member tests under QTESTSRC."))

    for testing_config in [root / ".vscode" / "testing.json", root / "qtestsrc" / "testing.json"]:
        path_label = rel(testing_config, root)
        if not testing_config.exists():
            findings.append(Finding("Medium", "testing-config-missing", path_label, "IBM i Testing RPGUnit configuration is missing."))
            continue
        try:
            data = json.loads(read_text(testing_config))
        except json.JSONDecodeError as exc:
            findings.append(Finding("High", "testing-config-json", path_label, f"Invalid JSON: {exc}."))
            continue
        rpgunit = data.get("rpgunit", {})
        rucrtrpg = rpgunit.get("rucrtrpg", {})
        rucalltst = rpgunit.get("rucalltst", {})
        if "LANUZACX2/NOVABND" not in rucrtrpg.get("bndDir", []):
            findings.append(Finding("Medium", "testing-binder-directory", path_label, "RPGUnit test compile config should bind with LANUZACX2/NOVABND."))
        if rucrtrpg.get("actGrp") != "NOVA":
            findings.append(Finding("Medium", "testing-activation-group", path_label, "RPGUnit test compile config should use activation group NOVA."))
        if rucalltst.get("libl") != "*CURRENT":
            findings.append(Finding("Medium", "testing-run-library-list", path_label, "RPGUnit run config should use the current PUB400 library list."))

    rules = root / "Rules.mk"
    if rules.exists():
        text = read_text(rules)
        for source in REQUIRED_SOURCES:
            if source not in text:
                findings.append(Finding("High", "rules-source-target", "Rules.mk", f"Rules.mk does not reference required source {source}."))
        for target in ["GLBLN_RECON.PGM", "JSON_OUTPUT.PGM", "GLBLN_BATCH.PGM", "GLBLN_DATA.MODULE", "JSON_UTILS.MODULE", "NOVA.SRVPGM"]:
            if target not in text:
                findings.append(Finding("High", "rules-object-target", "Rules.mk", f"Rules.mk does not define required TOBi object target {target}."))
        for phony_target in ["all:", "libs:", "pgms:", "db:", "clean:", "rebuild:", "show-config:", ".PHONY"]:
            if phony_target in text:
                findings.append(Finding("High", "rules-phony-target", "Rules.mk", f"Rules.mk contains unsupported non-object target {phony_target}."))
        if "QSH CMD(" in text:
            findings.append(Finding("High", "rules-pase-shell", "Rules.mk", "Rules.mk recipes run under PASE shell; use shell commands such as mkdir directly, not QSH CMD(...)."))
        raw_cl = re.search(r"^\t(RUNSQLSTM|CRTSQLRPGI|CRTRPGMOD|CRTSRVPGM|CRTBNDCL)\b", text, re.I | re.M)
        if raw_cl:
            findings.append(Finding("High", "rules-raw-cl-command", "Rules.mk", "Rules.mk recipes run under PASE shell; wrap IBM i CL commands with system \"...\"."))
        if "RUNSQLSTM" in text and "DFTRDBCOL($(TARGET_LIB))" not in text:
            findings.append(Finding("High", "rules-sql-library", "Rules.mk", "RUNSQLSTM must specify DFTRDBCOL($(TARGET_LIB)) so SQL DDL objects are created in LANUZACX2 even when CURLIB is blank."))
        if "TARGET_LIB := $(if $(strip $(CURLIB)),$(CURLIB),LANUZACX2)" not in text:
            findings.append(Finding("High", "rules-target-lib-default", "Rules.mk", "Rules.mk should define TARGET_LIB with a fallback for blank CURLIB during Project Explorer object builds."))
        if "$(CURLIB)/" in text or "DFTRDBCOL($(CURLIB))" in text:
            findings.append(Finding("High", "rules-curlib-direct", "Rules.mk", "Use $(TARGET_LIB), not $(CURLIB), in build recipes because Project Explorer can pass CURLIB as blank."))
        if "SRCSTMF" not in text:
            findings.append(Finding("High", "rules-stream-files", "Rules.mk", "Build rules should compile from stream files with SRCSTMF."))


def main() -> int:
    parser = argparse.ArgumentParser(description="Audit TallerGitHub IBM i repository compliance.")
    parser.add_argument("root", nargs="?", default=".", help="Repository root")
    parser.add_argument("--json", action="store_true", help="Emit JSON")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    findings: list[Finding] = []
    audit_required_docs(root, findings)
    audit_sql(root, findings)
    audit_build_config(root, findings)

    status = "FAIL" if any(f.severity in {"Critical", "High"} for f in findings) else "PASS"
    result = {
        "status": status,
        "total_findings": len(findings),
        "findings": [f.__dict__ for f in findings],
    }

    if args.json:
        print(json.dumps(result, indent=2, ensure_ascii=False))
    else:
        print(f"Status: {status}")
        print(f"Findings: {len(findings)}")
        for finding in findings:
            print(f"- [{finding.severity}] {finding.rule} {finding.path}: {finding.message}")
    return 1 if status == "FAIL" else 0


if __name__ == "__main__":
    raise SystemExit(main())
