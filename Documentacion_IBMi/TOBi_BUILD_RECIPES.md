# TOBi Build Recipes for TallerGitHub IBM i Reconciliation Project

**Date:** 2026-06-04  
**Author:** Cesar Lanuza  
**Project:** GitHub Workshop for IBM i - Financial Reconciliation System  
**Library:** LANUZACX2  
**Build System:** TOBi (The Object Builder for i) v3.3.0

---

## Table of Contents

1. [Overview](#overview)
2. [Build System Architecture](#build-system-architecture)
3. [Build Recipes](#build-recipes)
4. [Compiler Options](#compiler-options)
5. [Dependency Resolution](#dependency-resolution)
6. [Quick Start Commands](#quick-start-commands)
7. [Troubleshooting](#troubleshooting)

---

## Overview

TOBi is a GNU Make-based build system for IBM i QSYS objects. The TallerGitHub project uses TOBi to:

- **Compile SQLRPGLE programs** that query GL balance reconciliation data
- **Create RPGLE modules** for data access and JSON utilities (reusable components)
- **Bind modules into service programs** (NOVA.SRVPGM) for shared functionality
- **Compile CLLE orchestration programs** for batch processing
- **Execute SQL DDL scripts** to create/maintain database tables
- **Manage dependencies** automatically—only recompile when source changes

### Why TOBi?

| Feature | Benefit |
|---------|---------|
| **Incremental Builds** | Only changed sources recompile; saves time on large projects |
| **Dependency Tracking** | Changes propagate automatically (e.g., module change → service program rebuild) |
| **Industry Standard** | Uses familiar GNU Make syntax; portable across Unix/Linux/Mac |
| **Flexible** | Custom compile parameters per object; easy to extend |
| **Easy Integration** | Works with VS Code, Code for IBM i, and RDi |

---

## Build System Architecture

```
TallerGitHub Repository (Windows/Mac/Linux workstation)
  ├── Rules.mk (build recipe definitions)
  ├── iproj.json (project metadata - includes TOBi config)
  ├── .vscode/tasks.json (VS Code integration)
  │
  ├── Databases/
  │   ├── GLBLN.SQL (GL balance table source)
  │   ├── ACMST.SQL (Account master source)
  │   └── CUMST.SQL (Customer master source)
  │
  └── Documentacion_IBMi/Codigo_Ejemplos/
      ├── GLBLN_RECON.SQLRPGLE (Main reconciliation program source)
      ├── JSON_OUTPUT.SQLRPGLE (JSON output generator source)
      ├── GLBLN_DATA.RPGLE (Data access module source)
      ├── JSON_UTILS.RPGLE (JSON utility module source)
      └── GLBLN_BATCH.CLE (Batch orchestrator CL source)

             ↓ (makei command triggers build)

PUB400 (IBM i LANUZACX2 Library)
  ├── GLBLN (SQL table)
  ├── ACMST (SQL table)
  ├── CUMST (SQL table)
  ├── GLBLN_DATA (RPGLE module)
  ├── JSON_UTILS (RPGLE module)
  ├── NOVA (Service Program binding above modules)
  ├── GLBLN_RECON (SQLRPGLE program - depends on NOVA.SRVPGM)
  ├── JSON_OUTPUT (SQLRPGLE program - depends on NOVA.SRVPGM)
  └── GLBLN_BATCH (CLE program - orchestration)
```

---

## Build Recipes

### 1. SQL DDL Recipes (Database Objects)

#### Recipe: Create GLBLN Table

```makefile
src/databases/GLBLN.SQL: ;
```

**Trigger:** Any time source file `Databases/GLBLN.SQL` changes or object doesn't exist.

**Action:** Executes RUNSQLSTM to:
- Read SQL DDL from the workstation file
- Connect to PUB400
- Execute CREATE OR REPLACE TABLE statement
- Create table structure with constraints, labels, comments

**Compiler Command:**
```clle
RUNSQLSTM SRCFILE('LANUZACX2/QSQLSRC') SRCMBR(GLBLN) \
  COMMIT(*NONE) NAMING(*SQL)
```

**Output:** 
- `GLBLN` table in `LANUZACX2` library
- Columns: account_id, balance, currency, branch, lastUpdated, etc.

**When Used:**
- First build (table doesn't exist)
- When schema changes (`GLBLN.SQL` modified)

---

### 2. SQLRPGLE Program Recipes (Free-Format SQL with RPG)

#### Recipe: Compile GLBLN_RECON Program

```makefile
GLBLN_RECON.pgm: GLBLN_RECON.SQLRPGLE
	CRTSQLRPGI OBJ(GLBLN_RECON) SRCFILE('LANUZACX2/NOVASORC') \
		SRCMBR(GLBLN_RECON) \
		$(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) \
		BNDDIR('NOVABND') ACTGRP('NOVA')
```

**Trigger:** When `GLBLN_RECON.SQLRPGLE` changes or `.pgm` object doesn't exist.

**Compiler Options Applied:**
```
OPTIMIZE(*FULL)      — Optimize for performance
DATFMT(*ISO)         — Use ISO date format (YYYY-MM-DD)
TIMFMT(*ISO)         — Use ISO time format (HH:MM:SS)
TOSRC(*YES)          — Write debuggable source to QSQLSRC
DBGVIEW(*SOURCE)     — Enable source-level debugging
TGTRLS(*CURRENT)     — Bind to current IBM i release
BNDDIR('NOVABND')    — Use NOVA binder directory for dependencies
ACTGRP('NOVA')       — Use NOVA activation group
```

**Source Characteristics (required in GLBLN_RECON.SQLRPGLE):**
```rpgle
**free
ctl-opt DFTACTGRP(*NO) ACTGRP('NOVA') \
  OPTION(*SRCSTMT : *NODEBUGIO) BNDDIR('NOVABND');
```

**Purpose:** 
- Query GL balances from GLBLN table
- Apply reconciliation logic
- Return reconciliation status and differences

**Dependencies:**
- `NOVA.SRVPGM` (service program providing shared functions)
- `GLBLN` table (source data)

**Output:**
- `GLBLN_RECON` program in `LANUZACX2` library
- Activation group: NOVA
- Can be called from batch or interactive jobs

---

#### Recipe: Compile JSON_OUTPUT Program

```makefile
JSON_OUTPUT.pgm: JSON_OUTPUT.SQLRPGLE
	CRTSQLRPGI OBJ(JSON_OUTPUT) SRCFILE('LANUZACX2/NOVASORC') \
		SRCMBR(JSON_OUTPUT) \
		$(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) \
		BNDDIR('NOVABND') ACTGRP('NOVA')
```

**Purpose:**
- Generate UTF-8 JSON from reconciliation data
- Write JSON to IFS path (e.g., `/home/user/reconciliation.json`)
- Include metadata: executionId, timestamp, commit hash, tool version

**Dependencies:**
- `NOVA.SRVPGM` (JSON utility functions from module)
- `GLBLN` table (source data)

---

### 3. RPGLE Module Recipes (Reusable Components)

#### Recipe: Compile GLBLN_DATA Module

```makefile
GLBLN_DATA.module: GLBLN_DATA.RPGLE
	CRTRPGMOD MODULE(GLBLN_DATA) SRCFILE('LANUZACX2/NOVASORC') \
		SRCMBR(GLBLN_DATA) \
		$(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('NOVABND')
```

**Trigger:** When `GLBLN_DATA.RPGLE` changes or module doesn't exist.

**Compiler Options:**
```
OPTIMIZE(*FULL)      — Performance optimization
DATFMT(*ISO)         — ISO date format
TIMFMT(*ISO)         — ISO time format
DBGVIEW(*SOURCE)     — Source-level debugging
TGTRLS(*CURRENT)     — Current release compatibility
BNDDIR('NOVABND')    — Bind directory for dependencies (optional for modules)
```

**Purpose:**
- Data access layer for GL accounts
- Encapsulates SQL queries for GLBLN table
- Provides reusable procedures: `GetAccountBalance()`, `GetAccountList()`, etc.

**Source Template:**
```rpgle
**free
ctl-opt NOMAIN OPTION(*SRCSTMT : *NODEBUGIO) BNDDIR('NOVABND');

dcl-proc GetAccountBalance export;
  dcl-pi GetAccountBalance varchar(50);
    p_accountId varchar(50) const;
  end-pi;
  
  // Implementation: Query GLBLN, return balance
end-proc;
```

**Output:**
- `GLBLN_DATA` module in `LANUZACX2` library
- Later bound into `NOVA.SRVPGM`

---

#### Recipe: Compile JSON_UTILS Module

```makefile
JSON_UTILS.module: JSON_UTILS.RPGLE
	CRTRPGMOD MODULE(JSON_UTILS) SRCFILE('LANUZACX2/NOVASORC') \
		SRCMBR(JSON_UTILS) \
		$(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('NOVABND')
```

**Purpose:**
- JSON generation utilities
- Procedures: `AddJsonField()`, `FormatJsonOutput()`, `WriteToIFS()`, etc.
- Handles UTF-8 encoding and IFS file operations

---

### 4. Service Program Binding Recipe

#### Recipe: Create NOVA Service Program

```makefile
NOVA.srvpgm: GLBLN_DATA.module JSON_UTILS.module
	CRTSRVPGM SRVPGM(NOVA) MODULE(GLBLN_DATA JSON_UTILS) \
		EXPORT(*ALL) BNDDIR('NOVABND') ACTGRP(*CALLER) \
		TGTRLS(*CURRENT)
```

**Trigger:** When either module changes or service program doesn't exist.

**Dependency Chain:**
```
GLBLN_DATA.RPGLE → GLBLN_DATA.module ↘
                                        → NOVA.srvpgm ← used by programs
JSON_UTILS.RPGLE → JSON_UTILS.module ↗
```

**Binding Options:**
```
EXPORT(*ALL)         — Export all procedures for caller programs
ACTGRP(*CALLER)      — Inherit caller's activation group
BNDDIR('NOVABND')    — Use NOVA binder directory
```

**Purpose:**
- Bundle reusable modules into a single object
- Programs call service program instead of individual modules
- Simplifies maintenance and versioning

**Output:**
- `NOVA` service program in `LANUZACX2` library
- Programs bind with: `BNDDIR('NOVABND')` references this SRVPGM

---

### 5. CLLE Program Recipe (Orchestration)

#### Recipe: Compile GLBLN_BATCH Orchestrator

```makefile
GLBLN_BATCH.pgm: GLBLN_BATCH.CLE GLBLN_RECON.pgm JSON_OUTPUT.pgm
	CRTCLPGM PGM(GLBLN_BATCH) SRCFILE('LANUZACX2/NOVASORC') \
		SRCMBR(GLBLN_BATCH) \
		$(CLLEC_OPTS) TGTRLS(*CURRENT)
```

**Trigger:** When `GLBLN_BATCH.CLE` changes OR either program dependency changes.

**Dependencies:**
- `GLBLN_RECON.pgm` (must exist before compile)
- `JSON_OUTPUT.pgm` (must exist before compile)

**Compiler Options:**
```
OPTION(*EVENTF)      — Write error messages to event file
DBGVIEW(*SOURCE)     — Source-level debugging
TGTRLS(*CURRENT)     — Current release compatibility
```

**Purpose:**
- Batch orchestration program
- Calls sequence: Set up parameters → `CALL GLBLN_RECON` → `CALL JSON_OUTPUT`
- Manages job submission and error handling

**Example CL Source (GLBLN_BATCH.CLE):**
```cle
PGM
  DCL VAR(&BANK) TYPE(*CHAR) LEN(4) VALUE('0001')
  DCL VAR(&BRANCH) TYPE(*CHAR) LEN(3) VALUE('001')
  DCL VAR(&OUTCDE) TYPE(*INT)
  
  CALL PGM(GLBLN_RECON) PARM(&BANK &BRANCH &OUTCDE)
  
  IF (&OUTCDE = 0) DO
    CALL PGM(JSON_OUTPUT) PARM(&BANK &BRANCH)
  ENDDO
  
  ENDPGM
```

---

## Composite Targets (Build Profiles)

### `make all` — Build Everything

**Includes:** Programs + Modules + Service Programs + Database Objects

```makefile
all: GLBLN_RECON.pgm JSON_OUTPUT.pgm NOVA.srvpgm GLBLN_BATCH.pgm
```

**Build Sequence (automatic):**
```
1. GLBLN_DATA.RPGLE → GLBLN_DATA.module
2. JSON_UTILS.RPGLE → JSON_UTILS.module
3. (1) + (2) → NOVA.srvpgm
4. GLBLN_RECON.SQLRPGLE + NOVA.srvpgm → GLBLN_RECON.pgm
5. JSON_OUTPUT.SQLRPGLE + NOVA.srvpgm → JSON_OUTPUT.pgm
6. GLBLN_BATCH.CLE + GLBLN_RECON.pgm + JSON_OUTPUT.pgm → GLBLN_BATCH.pgm
7. SQL files → Tables
```

**Command:** `makei all`

---

### `make pgms` — Build Programs Only

```makefile
pgms: GLBLN_RECON.pgm JSON_OUTPUT.pgm GLBLN_BATCH.pgm
```

**Use When:** Service program already exists; only program source changed.

**Command:** `makei pgms`

---

### `make libs` — Build Service Programs/Modules Only

```makefile
libs: NOVA.srvpgm
```

**Use When:** Updating module/service program; programs don't need rebuild.

**Command:** `makei libs`

---

### `make db` — Build Database Objects Only

```makefile
db: src/databases/GLBLN.SQL src/databases/ACMST.SQL src/databases/CUMST.SQL
```

**Use When:** Schema changes; no program changes.

**Command:** `makei db`

---

### `make clean` — Delete Compiled Objects

```makefile
clean:
	DLTOBJ OBJ($(CURLIB)/GLBLN_RECON) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/JSON_OUTPUT) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/GLBLN_BATCH) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/NOVA) OBJTYPE(*SRVPGM)
```

**Warning:** Destructive operation! Deletes compiled objects from `LANUZACX2` library.

**Command:** `makei clean`

---

### `make rebuild` — Clean + Build All

```makefile
rebuild: clean all
```

**Use When:** Need full rebuild from scratch; suspicious about incremental state.

**Command:** `makei rebuild`

---

## Compiler Options

### SQLRPGLE Compile Options

```
OPTIMIZE(*FULL)      Full runtime optimization
DATFMT(*ISO)         ISO date format (YYYY-MM-DD)
TIMFMT(*ISO)         ISO time format (HH:MM:SS)
TOSRC(*YES)          Generate source in QSQLSRC
DBGVIEW(*SOURCE)     Enable source-level debugging
TGTRLS(*CURRENT)     Bind to current release
BNDDIR('NOVABND')    Bind directory for linking
ACTGRP('NOVA')       Activation group name
```

**When to Override:**
- `DBGVIEW(*NONE)` for production builds (removes debug info, reduces size)
- `OPTIMIZE(*NONE)` for fastest compile during development
- `ACTGRP(*NEW)` for isolated jobs (instead of NOVA)

---

### RPGLE Compile Options

```
OPTIMIZE(*FULL)      Full runtime optimization
DATFMT(*ISO)         ISO date format
TIMFMT(*ISO)         ISO time format
DBGVIEW(*SOURCE)     Source-level debugging
TGTRLS(*CURRENT)     Current release compatibility
BNDDIR('NOVABND')    Bind directory
```

**Modules** should NOT specify `ACTGRP` (inherited from calling program via BNDDIR).

---

### CLLE Compile Options

```
OPTION(*EVENTF)      Write messages to event file
DBGVIEW(*SOURCE)     Source-level debugging
TGTRLS(*CURRENT)     Current release compatibility
```

---

## Dependency Resolution

TOBi uses GNU Make to track dependencies. Modification timestamps determine rebuild needs:

```
File Modified → Timestamp Updated → Dependency Triggers Rebuild
```

### Example Scenario: Change JSON_UTILS.RPGLE

```
1. User edits JSON_UTILS.RPGLE on workstation
2. Git commit updates file timestamp
3. makei detects JSON_UTILS.RPGLE newer than JSON_UTILS.module
4. Rebuilds: JSON_UTILS.module
5. Detects NOVA.srvpgm older than JSON_UTILS.module
6. Rebuilds: NOVA.srvpgm
7. Detects GLBLN_RECON.pgm older than NOVA.srvpgm
8. Rebuilds: GLBLN_RECON.pgm
9. Detects GLBLN_BATCH.pgm older than GLBLN_RECON.pgm
10. Rebuilds: GLBLN_BATCH.pgm
```

**Result:** Entire dependency chain rebuilt automatically—zero manual intervention.

---

## Quick Start Commands

### First-Time Build

```powershell
# From workspace root (TallerGitHub directory)
makei all
```

Expected output:
```
CRTSQLRPGI OBJ(GLBLN_DATA) SRCFILE('LANUZACX2/NOVASORC') ...
CRTSQLRPGI OBJ(JSON_UTILS) SRCFILE('LANUZACX2/NOVASORC') ...
CRTSRVPGM SRVPGM(NOVA) MODULE(GLBLN_DATA JSON_UTILS) ...
[etc.]
TOBi build complete: TallerGitHub reconciliation system built successfully
```

### Development Workflow

```powershell
# Edit source file (e.g., GLBLN_RECON.SQLRPGLE)
# VS Code: Terminal > Run Task > "TOBi: Build All (makei all)"
makei all

# Or build specific target
makei pgms      # Just programs
makei libs      # Just service programs
```

### VS Code Integration

**In VS Code:**
1. Press `Ctrl+Shift+B` (or Cmd+Shift+B on Mac)
2. Select "TOBi: Build All (makei all)" from dropdown
3. Watch output in Integrated Terminal

---

## Troubleshooting

### Issue: "makei: command not found"

**Cause:** TOBi CLI tool not installed or not in PATH.

**Solution:**
```powershell
# Install TOBi
pip install tobi

# Verify installation
makei --version

# If still not found, verify PATH includes pip bin folder
python -m site --user-scripts
```

---

### Issue: "BNDDIR('NOVABND') not found"

**Cause:** Binder directory doesn't exist on PUB400.

**Solution:**
```clle
CRTBNDDIR BNDDIR(LANUZACX2/NOVABND)
ADDBNDDIRE BNDDIR(LANUZACX2/NOVABND) OBJ((LANUZACX2/NOVA *SRVPGM))
```

---

### Issue: "NOVASORC file not found"

**Cause:** Source file doesn't exist in LANUZACX2 library.

**Solution:**
```clle
CRTSRCPF FILE(LANUZACX2/NOVASORC) RCDLEN(112) MBR(*NONE)
```

---

### Issue: Incremental builds not working (always recompiles everything)

**Cause:** Source file timestamps not updating correctly.

**Solution:**
```powershell
# Force rebuild
makei rebuild
```

---

### Issue: SQL table creation fails with "object already exists"

**Cause:** Table exists but schema differs.

**Solution:**
```clle
# Option 1: DROP table first
DROP TABLE LANUZACX2.GLBLN;

# Option 2: Use CREATE OR REPLACE TABLE in SQL source
CREATE OR REPLACE TABLE LANUZACX2.GLBLN (...)
```

---

## References

- **TOBi Official Docs:** https://ibm.github.io/ibmi-tobi/
- **GNU Make Manual:** https://www.gnu.org/software/make/manual/
- **IBM i SQL DDL:** https://www.ibm.com/docs/en/i/latest
- **RPGLE Free Format:** https://www.ibm.com/products/i/documentation

---

**Last Updated:** 2026-06-04  
**Maintained By:** Cesar Lanuza (Novacomp)
