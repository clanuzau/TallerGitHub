---
name: skills
description: "Compatibility workspace skill for the TallerGitHub repository when a user or IDE refers to the repository Skills folder. Use for the same IBM i TallerGitHub work as tallergithub-ibmi: SQLRPGLE/RPGLE modules, service programs, SQL table/view scripts, IFS JSON reconciliation output, PUB400 setup, TOBi/makei build configuration, and agent review reports based on Documentacion_IBMi/Requerimientos/requerimientos_taller.md and Reglas/Revision_IBMi.md."
---

# TallerGitHub Skills Compatibility

Use this as a compatibility alias for the repository-local TallerGitHub IBM i skill.

Prefer the canonical workspace skill `tallergithub-ibmi` when invoking skills directly. If an IDE or prompt refers to the repository `Skills` folder, apply these same rules.

## Required Context

Read the relevant repository files before editing:

- `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`
- `Reglas/Revision_IBMi.md`
- `Documentacion_IBMi/Base_Datos/estructura_bd.md`
- `Databases/GLBLN.SQL` when GLBLN fields or SQL scripts are involved
- `.vscode/actions.json`, `.vscode/tasks.json`, `iproj.json`, and `Rules.mk` when PUB400, TOBi/makei, compile actions, or environment setup are involved

## Core Rules

- Preserve the IBM i architecture: orchestration, data access, business rules, JSON/IFS output, and reusable utilities stay separated.
- Generate UTF-8 JSON in IFS with `metadata`, `ejecucion`, `contexto`, `cuentas`, `controlTotales`, and `incidentes`.
- Validate JSON output against the reconciliation contract in `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`.
- Use `GLBLN`, defined in `Databases/GLBLN.SQL`, as the primary source for general ledger account balances.
- Enforce SQL DDL rules: `CREATE OR REPLACE TABLE`, `FOR COLUMN`, `CONSTRAINT ... PRIMARY KEY`, `RCDFMT`, table/column comments, labels, and no DDS PF/LF objects.
- When reviewing, lead with findings ordered by Critical, High, Medium, and Low severity, with file or section evidence.
