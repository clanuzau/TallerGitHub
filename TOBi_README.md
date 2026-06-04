# TOBi Build System Setup - TallerGitHub Project

**Project:** GitHub Workshop for IBM i - Financial Reconciliation System  
**Setup Completed:** 2026-06-04  
**Target Platform:** PUB400 (IBM i LANUZACX2 Library)  
**Build Tool:** TOBi (The Object Builder for i) v3.3.0

---

## 📦 What Has Been Set Up

### 1. **Build Recipe File (Rules.mk)** ✅
- **Location:** `TallerGitHub/Rules.mk`
- **Purpose:** Defines how to compile SQLRPGLE, RPGLE, CLLE programs and SQL DDL objects
- **What It Contains:**
  - Compiler options for SQLRPGLE, RPGLE, CLLE languages
  - Build rules for 5+ program/module targets
  - Service program binding configuration
  - Composite build targets: `all`, `pgms`, `libs`, `db`, `clean`, `rebuild`

### 2. **Project Metadata Update (iproj.json)** ✅
- **Location:** `TallerGitHub/iproj.json`
- **Updates Made:**
  - Added `"buildSystem": "tobi"` identifier
  - Added compiler options per language
  - Added binder directory: `NOVABND`
  - Added activation group: `NOVA`

### 3. **VS Code Integration (tasks.json)** ✅
- **Location:** `TallerGitHub/.vscode/tasks.json`
- **New Tasks Added (7 total):**
  1. **TOBi: Build All** — `makei all` (default build)
  2. **TOBi: Build Programs Only** — `makei pgms`
  3. **TOBi: Build Libraries/Service Programs** — `makei libs`
  4. **TOBi: Build Database Objects** — `makei db`
  5. **TOBi: Clean Objects** — `makei clean`
  6. **TOBi: Rebuild** — `makei rebuild`
  7. **TOBi: Show Build Configuration** — `makei show-config`

### 4. **Build Recipe Documentation** ✅
- **Location:** `TallerGitHub/Documentacion_IBMi/TOBi_BUILD_RECIPES.md`
- **Content:**
  - Detailed explanation of each build recipe
  - Dependency chains and how they work
  - Compiler options and when to use them
  - SQL DDL, SQLRPGLE, RPGLE, CLLE examples
  - Service program binding explanation
  - 80+ KB comprehensive guide

### 5. **Setup Checklist & Quick Reference** ✅
- **Location:** `TallerGitHub/TOBi_SETUP_CHECKLIST.md`
- **Content:**
  - 4-phase setup checklist (Workstation → PUB400 → VS Code → First Build)
  - Quick command reference
  - Verification checklist
  - Common workflows
  - Troubleshooting quick fixes

---

## 🚀 Quick Start (What You Need to Do Now)

### Step 1: Install Python (Required)

If you don't have Python 3.6+ installed:

**Option A: Microsoft Store (Easiest)**
1. Open Microsoft Store
2. Search "Python 3.12"
3. Click Install
4. Restart terminal

**Option B: python.org**
1. Visit https://www.python.org/downloads/
2. Download Python 3.12+ for Windows
3. Run installer
4. ✓ Check "Add Python to PATH"
5. Click Install

**Verify:**
```powershell
python --version
```
Expected output: `Python 3.10.x` or higher

---

### Step 2: Install TOBi

```powershell
pip install tobi
```

**Verify:**
```powershell
makei --version
```
Expected output: `tobi version 3.3.0` or higher

---

### Step 3: Set Up PUB400 (IBM i)

Connect to PUB400 via ACS or SSH and run these commands:

```clle
# Create source file for your code
CRTSRCPF FILE(LANUZACX2/NOVASORC) RCDLEN(112) MBR(*NONE)

# Create source file for SQL (if not exists)
CRTSRCPF FILE(LANUZACX2/QSQLSRC) RCDLEN(112) MBR(*NONE)

# Create binder directory for service programs
CRTBNDDIR BNDDIR(LANUZACX2/NOVABND)

# Verify
WRKOBJ OBJ(LANUZACX2) OBJTYPE(*ALL)
```

---

### Step 4: Test the Build System

From your TallerGitHub workspace directory in terminal:

```powershell
# Show build configuration
makei show-config

# Expected output shows:
# - Library: LANUZACX2
# - Binder Dir: NOVABND
# - Compiler options
```

---

### Step 5: Verify in VS Code

1. Open TallerGitHub folder in VS Code
2. Press `Ctrl+Shift+B` (Build command)
3. You should see dropdown with TOBi tasks:
   - TOBi: Build All (makei all)
   - TOBi: Build Programs Only (makei pgms)
   - [etc.]

---

## 📁 Project Structure

```
TallerGitHub/
├── Rules.mk                           ← TOBi build recipes (new)
├── iproj.json                         ← Project config (updated)
├── TOBi_SETUP_CHECKLIST.md           ← This file (new)
│
├── .vscode/
│   └── tasks.json                     ← VS Code tasks (updated with 7 TOBi tasks)
│
├── Databases/
│   ├── GLBLN.SQL                      ← Table definitions
│   ├── ACMST.SQL
│   └── CUMST.SQL
│
└── Documentacion_IBMi/
    ├── Codigo_Ejemplos/
    │   ├── GLBLN_RECON.SQLRPGLE      ← Main program source
    │   ├── JSON_OUTPUT.SQLRPGLE      ← JSON generation
    │   ├── GLBLN_DATA.RPGLE          ← Data module
    │   ├── JSON_UTILS.RPGLE          ← Utilities module
    │   └── GLBLN_BATCH.CLE           ← Batch orchestrator
    │
    ├── TOBi_BUILD_RECIPES.md         ← Detailed documentation (new)
    ├── Requerimientos/
    │   └── requerimientos_taller.md
    └── Base_Datos/
        └── estructura_bd.md
```

---

## 🎯 Build Architecture

### What Gets Built (Objects on PUB400)

```
makei all
  ├─ SQL DDL Objects (Tables)
  │   ├─ GLBLN (GL Balance table)
  │   ├─ ACMST (Account Master)
  │   └─ CUMST (Customer Master)
  │
  ├─ RPGLE Modules (Reusable components)
  │   ├─ GLBLN_DATA (Data access layer)
  │   └─ JSON_UTILS (JSON utilities)
  │
  ├─ Service Program (Binds modules)
  │   └─ NOVA.SRVPGM (Contains GLBLN_DATA + JSON_UTILS)
  │
  └─ Executable Programs
      ├─ GLBLN_RECON.PGM (Main reconciliation)
      ├─ JSON_OUTPUT.PGM (JSON generation)
      └─ GLBLN_BATCH.PGM (Batch orchestrator)
```

### Dependency Chain Example

```
When you change: GLBLN_DATA.RPGLE (data module source)

TOBi automatically rebuilds:
  1. GLBLN_DATA.module (CRTRPGMOD)
  2. NOVA.srvpgm (CRTSRVPGM - depends on module)
  3. GLBLN_RECON.pgm (CRTSQLRPGI - depends on service program)
  4. GLBLN_BATCH.pgm (CRTCLPGM - depends on GLBLN_RECON)
  
Result: Entire dependency chain rebuilt automatically ✅
```

---

## 🛠️ Common Commands

### Build Commands

```powershell
# Full build (everything)
makei all

# Just programs
makei pgms

# Just modules/service program
makei libs

# Just SQL tables
makei db

# Show configuration
makei show-config

# Delete compiled objects (warning: destructive)
makei clean

# Clean + rebuild everything
makei rebuild
```

### VS Code Integration

```
1. Press Ctrl+Shift+B → Select task from dropdown
2. Or: Ctrl+Shift+P → Run Task → Select TOBi task
3. Watch output in terminal
```

---

## 📚 Documentation Files

### Available Documentation

1. **[TOBi_SETUP_CHECKLIST.md](./TOBi_SETUP_CHECKLIST.md)**
   - Setup phases with verification steps
   - Quick command reference
   - Common workflows
   - Troubleshooting

2. **[Documentacion_IBMi/TOBi_BUILD_RECIPES.md](./Documentacion_IBMi/TOBi_BUILD_RECIPES.md)**
   - Detailed build recipe explanations
   - Compiler options reference
   - Dependency resolution details
   - 80+ KB comprehensive guide

3. **[Skills Guide](./Skills/SKILL.md)**
   - IBM i development skill definitions
   - Review criteria
   - Build/modify/validate workflows

---

## ✅ Verification

### Is TOBi working correctly?

Run these checks:

```powershell
# 1. Python installed
python --version
# Should show: Python 3.x.x

# 2. TOBi installed
makei --version
# Should show: tobi version 3.3.0+

# 3. Can see build config
makei show-config
# Should show LANUZACX2 library settings

# 4. VS Code recognizes tasks
# Press Ctrl+Shift+B in VS Code
# Should see TOBi task dropdown
```

### Are PUB400 prerequisites set up?

```clle
# On PUB400:
WRKOBJ OBJ(LANUZACX2/NOVASORC) OBJTYPE(*FILE)
WRKOBJ OBJ(LANUZACX2/QSQLSRC) OBJTYPE(*FILE)
WRKOBJ OBJ(LANUZACX2/NOVABND) OBJTYPE(*BNDDIR)

# All three should exist
```

---

## 🔗 What's Connected

### Build System Integration

```
Source Code (Windows/Local)
  ↓
Rules.mk (Build recipes)
  ↓
makei command (GNU Make)
  ↓
IBM i Compile Commands
  ↓
PUB400 LANUZACX2 Library
  ↓
Executable Objects (Programs/Modules/Tables)
```

### VS Code Integration

```
VS Code (Editor)
  ↓
.vscode/tasks.json (7 TOBi tasks)
  ↓
Ctrl+Shift+B or Run Task
  ↓
makei command
  ↓
Build output visible in terminal
```

---

## 🎓 Next Steps

1. **Create Your First Source File**
   ```rpgle
   **free
   ctl-opt DFTACTGRP(*NO) ACTGRP('NOVA') OPTION(*SRCSTMT : *NODEBUGIO) BNDDIR('NOVABND');
   
   // Your code here
   ```

2. **Upload to PUB400** (via ACS or Code for i)
   - File goes to: LANUZACX2/NOVASORC as member

3. **Build**
   ```powershell
   makei all
   ```

4. **Test on PUB400**
   ```clle
   CALL PGM(LANUZACX2/YOUR_PROGRAM)
   ```

5. **Commit Changes**
   ```powershell
   git add .
   git commit -m "Add new feature"
   git push
   ```

---

## 📖 For More Information

- **Complete Setup Guide:** [TOBi_SETUP_CHECKLIST.md](./TOBi_SETUP_CHECKLIST.md)
- **Build Recipes Details:** [Documentacion_IBMi/TOBi_BUILD_RECIPES.md](./Documentacion_IBMi/TOBi_BUILD_RECIPES.md)
- **TOBi Official Docs:** https://ibm.github.io/ibmi-tobi/
- **Project Requirements:** [Requerimientos](./Documentacion_IBMi/Requerimientos/requerimientos_taller.md)

---

## 🆘 Troubleshooting

| Issue | Solution |
|-------|----------|
| `makei: command not found` | Run: `pip install tobi` |
| Build fails with "NOVASORC not found" | Create file on PUB400: `CRTSRCPF FILE(LANUZACX2/NOVASORC) RCDLEN(112)` |
| VS Code tasks missing | Reload: Ctrl+Shift+P → "Developer: Reload Window" |
| Objects not appearing | Check library: `DSPLIBLIST` and verify LANUZACX2 in library list |
| Python 3.6+ required | Download from https://python.org (add to PATH) |

---

## 📝 Notes

- ✅ **Rules.mk created** with 6 composite build targets
- ✅ **iproj.json updated** with TOBi configuration
- ✅ **VS Code tasks added** (7 new TOBi build tasks)
- ✅ **Documentation created** (comprehensive guides)
- ⏳ **Awaiting:** Python installation on your workstation

---

## 🎉 You're Ready!

**Status:** TOBi build system fully configured for TallerGitHub  
**Next Action:** Install Python 3.6+ and run your first build!

```powershell
python --version        # Install Python if needed
pip install tobi        # Install TOBi
makei show-config       # Verify setup
makei all               # First build!
```

---

**Setup Completed By:** GitHub Copilot  
**Date:** 2026-06-04  
**Project:** TallerGitHub - IBM i Financial Reconciliation  
**Maintained By:** Cesar Lanuza (Novacomp)
