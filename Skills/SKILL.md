---
name: tallergithub-ibmi
description: Build, modify, validate, or review IBM i deliverables for the TallerGitHub repository, especially SQLRPGLE/RPGLE modules, service programs, IBM i SQL table/view scripts, IFS JSON reconciliation output, PUB400 setup, and agent review reports based on Documentacion_IBMi/Requerimientos/requerimientos_taller.md and Reglas/Revision_IBMi.md.
---

# TallerGitHub IBM i

Use this skill for IBM i work in the TallerGitHub repository. Treat the repository documents as the source of truth and keep changes aligned with the workshop's reconciliation scope.

## Core Workflow

1. Read the relevant local repository files before editing:
   - `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`
   - `Reglas/Revision_IBMi.md`
   - `Documentacion_IBMi/Base_Datos/estructura_bd.md` when database fields or scripts are involved
   - `.vscode/actions.json`, `.vscode/tasks.json`, `.env`, and `iproj.json` when PUB400, compile actions, or environment setup are involved
2. Preserve the IBM i architecture:
   - Main SQLRPGLE program orchestrates the process.
   - Data access is separated from business rules.
   - Reconciliation rules are separated from JSON/IFS output.
   - Reusable utilities belong in modules or service programs.
3. Keep all outputs traceable by execution id, timestamp, program, library, user, and IFS path.
4. Validate any JSON output against the required reconciliation contract before claiming completion.
5. When reviewing, lead with findings ordered by severity and cite files or sections as evidence.

## Implementation Guidance

- Build around GLBLN as the primary source for general ledger account balances.
- Support filters for bank, branch, currency, account range, process date, output IFS path, and execution mode.
- Generate UTF-8 JSON in IFS with `metadata`, `ejecucion`, `contexto`, `cuentas`, `controlTotales`, and `incidentes`.
- Include source, calculated, and reconciled balances for each account.
- Include reconciliation items when differences exist.
- Mark `excedeTolerancia` and `requiereRevision` explicitly.
- Ensure severe incidents affect `estadoEjecucion` as `PARCIAL` or `ERROR`.
- Keep PUB400 constraints in mind: personal library, SQL tables/views only, no DDS PF/LF objects.

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
