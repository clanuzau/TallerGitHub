---
name: Skills
description: |
  **Mode: IMPLEMENT** — Build/modify/validate IBM i deliverables (SQLRPGLE/RPGLE modules, service programs, SQL table/view scripts, IFS JSON reconciliation output, PUB400 setup) for the TallerGitHub repository per Documentacion_IBMi/Requerimientos/requerimientos_taller.md and Reglas/Revision_IBMi.md.
  
  **Mode: REVIEW** — Perform code and configuration review, lead with findings ordered by severity (Critical/High/Medium/Low), cite evidence files, produce findings summary with estadoEjecucion mapping. Start your response with the mode: **'IMPLEMENT'** or **'REVIEW'**.
  
  **Error Handling**: If any required repository file (requerimientos_taller.md, Revision_IBMi.md, estructura_bd.md, iproj.json, or reconciliation schema) is missing or unreadable, abort the task immediately, report 'missing file: <path>', and do not modify repository files.
coverageNote: |
  Explicit modes prevent role ambiguity; file validation gates execution; error status reporting enables recovery.
---

# TallerGitHub IBM i

Use this skill for IBM i work in the TallerGitHub repository. Treat the repository documents as the source of truth and keep changes aligned with the workshop's reconciliation scope.

## Core Workflow

**Step A: Validate Files & Build Factsheet**
1. Read and validate these required files exist and are readable:
   - `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`
   - `Reglas/Revision_IBMi.md`
   - `Documentacion_IBMi/Base_Datos/estructura_bd.md` (if DB fields/scripts involved)
   - `.vscode/actions.json`, `.vscode/tasks.json`, `iproj.json` (if PUB400/compile involved)
   - `Documentacion_IBMi/Requerimientos/reconciliation_output_schema.json` (JSON Schema Draft-07)
   
   If any file is missing/unreadable, return: `{ "status":"ERROR", "reason":"missing file", "file":"<path>" }` and stop.

2. Output a short factsheet: key requirements, table schemas (GLBLN, others), filter names/types, JSON structure, severity model, and review rules. Do NOT proceed to Step B until factsheet is reviewed.

**Step B: Implement Code Changes**
3. Preserve the IBM i architecture:
   - Main SQLRPGLE program orchestrates the process.
   - Data access is separated from business rules.
   - Reconciliation rules are separated from JSON/IFS output.
   - Reusable utilities belong in modules or service programs.
4. Keep all outputs traceable by execution id, timestamp, program, library, user, and IFS path.

**Step C: Validate JSON Output**
5. Validate any JSON output against the reconciliation JSON Schema located at `Documentacion_IBMi/Requerimientos/reconciliation_output_schema.json` using JSON Schema Draft-07. If validation fails, include validation errors in `incidentes`, set `estadoEjecucion` to `'PARCIAL'` (if failures are non-blocking) or `'ERROR'` (if required fields are missing), and do not mark the task as complete.

**Step D: Review & Report**
6. When reviewing, evaluate findings in this order:
   - (1) If any incident severity == 'Critical' → `estadoEjecucion = 'ERROR'`, mark `Rechazado`.
   - (2) Else if any incident severity == 'High' that blocks → `estadoEjecucion = 'PARCIAL'`, mark `Rechazado`.
   - (3) Else if minimum test evidence missing → `estadoEjecucion = 'PARCIAL'`, mark `Rechazado`.
   - (4) Else if only Medium/Low findings → `estadoEjecucion = 'COMPLETO'`, mark `Aprobado con observaciones`.
   - (5) Else → `estadoEjecucion = 'COMPLETO'`, mark `Aprobado`.
   
   Lead with findings ordered by severity and cite files or sections as evidence.

**PUB400 Error Handling**: If PUB400 compilation fails, capture compile output/errors in the report, set `estadoEjecucion='ERROR'`, and include instructions to reproduce (command, env vars, iproj.json).

## Implementation Guidance

- **Primary Source**: Use the GLBLN table (defined in `Documentacion_IBMi/Databases/GLBLN.SQL`) as the primary source for general ledger account balances. Schema reference: table columns include account identifiers, balance amounts, currency, and branch code.
  
- **Filter Parameters** (exact names and types):
  - `bankCode` (string): Bank identifier
  - `branchCode` (string): Branch identifier
  - `currencyCode` (ISO 4217 string): Currency code (e.g., 'USD', 'EUR')
  - `accountStart` (string): Starting account range (inclusive)
  - `accountEnd` (string): Ending account range (inclusive)
  - `processDate` (YYYY-MM-DD): Reconciliation date
  - `outputIFSPath` (string, absolute IFS path): Output JSON location
  - `executionMode` (one of: `'PRODUCTION'`, `'TEST'`, `'DRY_RUN'`): Execution mode
  
- **JSON Output Structure**: Generate UTF-8 JSON in IFS conforming to the JSON Schema at `Documentacion_IBMi/Requerimientos/reconciliation_output_schema.json`. Schema defines required structure and types for: `metadata`, `ejecucion`, `contexto`, `cuentas`, `controlTotales`, and `incidentes`.
  
- **Account Entry Fields**: Include source, calculated, and reconciled balances for each account.
  
- **Reconciliation Items**: Include reconciliation items when differences exist.
  
- **Tolerance and Review Flags**: 
  - Add boolean fields `excedeTolerancia` and `requiereRevision` to each account entry.
  - Compute `excedeTolerancia` as: `(abs(sourceBalance - reconciledBalance) / sourceBalance) > toleranceThreshold`, where `toleranceThreshold` is a decimal in metadata (e.g., 0.02 = 2%).
  - Set `requiereRevision = true` when `excedeTolerancia = true` OR any incident of severity 'High' or 'Critical' exists for the account.
  
- **PUB400 Constraints**: Personal library, SQL tables/views only, no DDS PF/LF objects.

## SQL DDL Rules

For table scripts, enforce the TallerGitHub SQL standard:

- Use `CREATE OR REPLACE TABLE`.
- Define system column aliases with `FOR COLUMN`.
- Define a `PRIMARY KEY` with `CONSTRAINT`.
- Define `RCDFMT`.
- Populate SQL script header with real, non-placeholder metadata: `executionId` (UUID string), `generatedBy` (program name), `generatedAt` (ISO 8601 timestamp), `repositoryCommit` (git SHA), `toolVersion` (semver). Do not use placeholder values like 'TODO' or empty strings.
- Include `COMMENT ON TABLE` and `LABEL ON TABLE`.
- Include `COMMENT ON COLUMN`, `LABEL ON COLUMN`, and `LABEL ON COLUMN ... TEXT IS` for every column.
- Do not create PF or LF objects, and do not use DDS artifacts.

## Review Guidance

Use the TallerGitHub severity model:

- Critical: incorrect data, integrity loss, major functional noncompliance, severe vulnerability, invalid required JSON, PF/LF creation, or missing main-flow test evidence.
- High: operationally relevant failure, no component separation, monolithic critical code, or incomplete table metadata/comments.
- Medium: maintainability/design issues, inconsistent naming, accumulated technical debt.
- Low: improvement with no immediate functional impact.

**Minimum Test Evidence** = automated unit test run with passing tests, integration run producing reconciliation JSON with valid schema, and sample IFS output file. Include stdout/stderr and commit hash in the review evidence.

**Decision Rules** (from Core Workflow Step D evaluation order):
- If any Critical incident → `Rechazado`
- Else if any High incident that blocks compliance → `Rechazado`
- Else if minimum test evidence missing → `Rechazado`
- Else if only Medium/Low findings with correction plan → `Aprobado con observaciones`
- Else → `Aprobado`
