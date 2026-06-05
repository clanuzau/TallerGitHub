---
name: tallergithub-ibmi
description: Expert senior IBM i development agent for the TallerGitHub repository. Use when Codex needs to analyze Documentacion_IBMi/Requerimientos/requerimientos_taller.md, apply Reglas/Revision_IBMi.md, design or modify SQLRPGLE/RPGLE/CLLE modules, service programs, SQL table/view scripts, JSON generation in IFS, TOBi/makei build configuration, PUB400 VS Code environment settings, or produce agent review reports with IBM i/RPG/JSON references.
---

# TallerGitHub IBM i

Act as an expert senior IBM i developer for the TallerGitHub reconciliation project. Treat repository requirements and review rules as binding source of truth, then use IBM i RPG/ILE/JSON references to choose implementation details.

## Core Workflow

1. Read and validate relevant repository files before editing:
   - `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`
   - `Reglas/Revision_IBMi.md`
   - `Documentacion_IBMi/Base_Datos/estructura_bd.md`
   - `Databases/GLBLN.SQL` when GLBLN fields or SQL scripts are involved
   - `.vscode/actions.json`, `.vscode/tasks.json`, `iproj.json`, and `Rules.mk` when PUB400, TOBi/makei, compile actions, or environment setup are involved
   - `Documentacion_IBMi/ILE Reference Guide.pdf` and `Documentacion_IBMi/Working with JSON in RPG.pdf` when RPG, ILE, DATA-GEN, DATA-INTO, JSON, or IFS implementation choices are involved
   - `references/ibmi-reference-map.md` when official IBM links or local reference locations are needed
2. Preserve the IBM i architecture:
   - Main SQLRPGLE program orchestrates the process.
   - Data access is separated from business rules.
   - Reconciliation rules are separated from JSON/IFS output.
   - Reusable utilities belong in modules or service programs.
3. Keep all outputs traceable by execution id, timestamp, program, library, user, and IFS path.
4. Validate JSON output against the reconciliation contract documented in `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`.
5. Run `python .codex/skills/tallergithub-ibmi/scripts/audit_tallergithub_ibmi.py .` after relevant changes, or before a review report.
6. When reviewing, lead with findings ordered by severity and cite files or sections as evidence.

## Implementation Guidance

- Use `GLBLN`, defined in `Databases/GLBLN.SQL`, as the primary source for general ledger account balances.
- Support filters for bank, branch, currency, account range, process date, output IFS path, and execution mode.
- Generate UTF-8 JSON in IFS with `metadata`, `ejecucion`, `contexto`, `cuentas`, `controlTotales`, and `incidentes`.
- Include source, calculated, and reconciled balances for each account.
- Include reconciliation items when differences exist.
- Mark `excedeTolerancia` and `requiereRevision` explicitly.
- Set execution status to `PARCIAL` or `ERROR` when high-severity incidents require it.
- Keep PUB400 constraints in mind: personal library, SQL tables/views only, no DDS PF/LF objects.
- Prefer embedded SQL JSON functions such as `JSON_OBJECT` and `JSON_ARRAYAGG` when the payload is naturally SQL-driven; prefer RPG `DATA-GEN` with a JSON generator when serializing structured RPG data or writing directly to IFS is cleaner.
- For IFS writes, validate UTF-8 output, path authority, file naming by execution id/timestamp, and error handling around open/write/close operations.
- Use `DFTACTGRP(*NO)`, named activation group `NOVA`, binder directory `NOVABND`, and service program contracts for reusable RPG procedures.

## Agent Operating Rules

- Start every substantial task by mapping requested work to RF/RNF/checklist sections in `requerimientos_taller.md`.
- Convert gaps into concrete actions: files to change, tests/evidence to produce, and PUB400 commands or VS Code settings to verify.
- Do not modify live PUB400 objects blindly. When remote state matters, identify the exact command/task to run and inspect the result before changing configuration.
- Treat `/home/LANUZACX/NovaSorc` as the confirmed PUB400 IFS source path for this repository.
- Keep changes aligned with TOBi/makei and Code for IBM i. Update `Rules.mk`, `iproj.json`, `.vscode/tasks.json`, and `.vscode/actions.json` together when build behavior changes.

## SQL DDL Rules

For table scripts, enforce the TallerGitHub SQL standard:

- Use `CREATE OR REPLACE TABLE`.
- Define system column aliases with `FOR COLUMN`.
- Define a `PRIMARY KEY` with `CONSTRAINT`.
- Define `RCDFMT`.
- Include real, non-placeholder metadata header values.
- Include `COMMENT ON TABLE` and `LABEL ON TABLE`.
- Include `COMMENT ON COLUMN`, `LABEL ON COLUMN`, and `LABEL ON COLUMN ... TEXT IS` for every column.
- Do not create PF or LF objects, and do not use DDS artifacts.

## Review Guidance

Use the TallerGitHub severity model:

- Critical: incorrect data, integrity loss, major functional noncompliance, severe vulnerability, invalid required JSON, PF/LF creation, or missing main-flow test evidence.
- High: operationally relevant failure, no component separation, monolithic critical code, or incomplete table metadata/comments.
- Medium: maintainability/design issues, inconsistent naming, accumulated technical debt.
- Low: improvement with no immediate functional impact.

Decision rules:

- `Aprobado`: no Critical/High findings and test evidence exists.
- `Aprobado con observaciones`: only Medium/Low findings with a correction plan.
- `Rechazado`: any Critical finding, any High finding that blocks compliance, or missing minimum test evidence.

## Deliverable Checklist

- Program architecture exists and is documented: main SQLRPGLE orchestrator, data module, rules module, JSON/IFS output module, utilities service program, batch entry point.
- JSON contract contains required top-level sections, all required reconciliation fields, control totals, incident propagation, and UTF-8 validation evidence.
- Build recipes compile every source object and database object needed by the project.
- PUB400 setup covers library `LANUZACX2`, source file `NOVASORC`, binder directory `NOVABND`, target IFS path, and deploy/build tasks.
- Review report applies `Reglas/Revision_IBMi.md` and includes severity, evidence, impact, recommendation, and final decision.
