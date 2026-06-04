# TOBi Setup Checklist & Quick Reference for TallerGitHub

**Project:** GitHub Workshop for IBM i - Financial Reconciliation System  
**Setup Date:** 2026-06-04  
**Target:** PUB400 / LANUZACX2 Library

---

## ✅ Setup Checklist

### Phase 1: Local Workstation Setup (Windows/Mac/Linux)

- [ ] **Step 1.1: Install Python 3.6+**
  - Windows: Microsoft Store → "Python 3.12" OR https://python.org
  - During install: ✓ Check "Add Python to PATH"
  - Verify: `python --version` (should show 3.x.x)

- [ ] **Step 1.2: Install TOBi via pip**
  ```powershell
  pip install tobi
  ```
  - Verify: `makei --version` (should show v3.3.0 or later)

- [ ] **Step 1.3: Verify Git and SSH to GitHub**
  ```powershell
  git --version
  ssh-keygen -t ed25519 -f ~/.ssh/github_key
  # Add public key to GitHub account
  ```

- [ ] **Step 1.4: Clone/Open TallerGitHub Repository**
  ```powershell
  cd ~\OneDrive - NOVACOMP\Documents\GitHub\TallerGitHub
  git status  # Should show clean workspace
  ```

---

### Phase 2: PUB400 IBM i Setup

- [ ] **Step 2.1: Create NOVASORC Source File**
  ```clle
  CRTSRCPF FILE(LANUZACX2/NOVASORC) RCDLEN(112) MBR(*NONE)
  ```
  - This stores your SQLRPGLE/RPGLE/CLE source members

- [ ] **Step 2.2: Create NOVABND Binder Directory**
  ```clle
  CRTBNDDIR BNDDIR(LANUZACX2/NOVABND)
  ```
  - This references service programs for binding

- [ ] **Step 2.3: Create QSQLSRC Source File (if needed)**
  ```clle
  CRTSRCPF FILE(LANUZACX2/QSQLSRC) RCDLEN(112) MBR(*NONE)
  ```
  - This stores SQL DDL members

- [ ] **Step 2.4: Verify Access to LANUZACX2 Library**
  ```clle
  WRKOBJ OBJ(LANUZACX2) OBJTYPE(*ALL)
  ```
  - Should show your objects and source files

---

### Phase 3: VS Code Configuration

- [ ] **Step 3.1: Install Code for i Extension (optional but recommended)**
  - VS Code: Extensions → Search "Code for i" → Install
  - This enables integrated IBM i compile output parsing

- [ ] **Step 3.2: Open TallerGitHub in VS Code**
  - File → Open Folder → Select TallerGitHub directory
  - Should load workspace settings and tasks

- [ ] **Step 3.3: Verify TOBi Tasks Available**
  - View → Command Palette → "Run Task" → Should show TOBi options
  - Or press `Ctrl+Shift+B` to see build tasks

---

### Phase 4: First TOBi Build

- [ ] **Step 4.1: Test CLI Build from Terminal**
  ```powershell
  cd c:\Users\clanuza\OneDrive - NOVACOMP\Documents\GitHub\TallerGitHub
  makei show-config
  ```
  - Should display build configuration
  - Library: LANUZACX2
  - Binder Dir: NOVABND

- [ ] **Step 4.2: Build All Objects (Full Build)**
  ```powershell
  makei all
  ```
  - Should compile:
    - SQL tables (GLBLN, ACMST, CUMST)
    - RPGLE modules (GLBLN_DATA, JSON_UTILS)
    - Service program (NOVA.srvpgm)
    - SQLRPGLE programs (GLBLN_RECON, JSON_OUTPUT)
    - CLLE program (GLBLN_BATCH)

- [ ] **Step 4.3: Verify Objects Created on PUB400**
  ```clle
  WRKOBJ OBJ(LANUZACX2/GLB*) OBJTYPE(*ALL)
  ```
  - Should list: GLBLN table, GLBLN_RECON program, GLBLN_DATA module

---

## 🚀 Quick Command Reference

### Build Commands

```powershell
# Build everything
makei all

# Build only programs
makei pgms

# Build only modules/service programs
makei libs

# Build only database objects
makei db

# Show configuration
makei show-config

# Clean (DELETE) compiled objects
makei clean

# Rebuild from scratch
makei rebuild
```

### VS Code Build Shortcuts

| Action | Key Combination |
|--------|-----------------|
| Show build tasks | `Ctrl+Shift+B` |
| Run task | `Ctrl+Shift+D` (then select task) |
| Command palette | `Ctrl+Shift+P` → "Run Task" |

### File Structure for Builds

```
TallerGitHub/
  ├── Rules.mk                          ← Build recipe definitions
  ├── iproj.json                        ← Project metadata (TOBi config)
  ├── .vscode/tasks.json                ← VS Code build tasks
  │
  ├── Databases/
  │   ├── GLBLN.SQL                     ← SQL table source
  │   ├── ACMST.SQL
  │   └── CUMST.SQL
  │
  └── Documentacion_IBMi/
      ├── Codigo_Ejemplos/
      │   ├── GLBLN_RECON.SQLRPGLE      ← Main program source
      │   ├── JSON_OUTPUT.SQLRPGLE      ← JSON output source
      │   ├── GLBLN_DATA.RPGLE          ← Data module source
      │   ├── JSON_UTILS.RPGLE          ← Utility module source
      │   └── GLBLN_BATCH.CLE           ← Orchestration source
      │
      └── TOBi_BUILD_RECIPES.md         ← This documentation
```

---

## 🔍 Verification Checklist

After setup, verify each component:

### Local Workstation

```powershell
# 1. Python installed
python --version
# Expected: Python 3.10+ (or higher)

# 2. TOBi installed
makei --version
# Expected: tobi version 3.3.0 (or higher)

# 3. Git configured
git config --list | findstr "user"
# Expected: user.name and user.email set

# 4. Repository cloned
cd c:\Users\clanuza\OneDrive - NOVACOMP\Documents\GitHub\TallerGitHub
git status
# Expected: On branch master (or main), working tree clean
```

### PUB400 IBM i

```clle
# 1. Library exists
WRKLIBPDM LIBPDM(LANUZACX2)
# Expected: LANUZACX2 library displays

# 2. Source files exist
WRKOBJ OBJ(LANUZACX2/NOVASORC) OBJTYPE(*FILE)
WRKOBJ OBJ(LANUZACX2/QSQLSRC) OBJTYPE(*FILE)
# Expected: Both files shown

# 3. Binder directory exists
WRKOBJ OBJ(LANUZACX2/NOVABND) OBJTYPE(*BNDDIR)
# Expected: NOVABND binder directory shown

# 4. User library in LIBL
DSPLIBLIST
# Expected: LANUZACX2 in library list
```

### VS Code

```
1. Command Palette (Ctrl+Shift+P)
   - Type: "Run Task"
   - Should show: "TOBi: Build All (makei all)" and other TOBi tasks

2. Tasks.json verification
   - .vscode/tasks.json should have 7 TOBi tasks defined

3. iproj.json verification
   - Should contain: "buildSystem": "tobi"
```

---

## 📋 Common Workflows

### Workflow 1: Daily Development Build

```powershell
# 1. Edit source files in VS Code
# 2. Terminal → Run Task → "TOBi: Build All (makei all)"
# 3. Check output for errors
# 4. Test on PUB400
# 5. Commit changes
git add .
git commit -m "Update reconciliation logic"
git push
```

### Workflow 2: Module Update (Service Program Change)

```powershell
# 1. Edit module source (e.g., JSON_UTILS.RPGLE)
# 2. Run: makei libs
#    (Rebuilds only service program, not programs that depend on it)
# 3. Then test programs manually or run: makei pgms
makei libs
makei pgms
```

### Workflow 3: Schema Change (SQL DDL Update)

```powershell
# 1. Edit SQL file (e.g., GLBLN.SQL)
# 2. Run: makei db
#    (Updates table structure on PUB400)
makei db

# 3. If table structure completely changed, programs may need recompile
# 4. Run: makei pgms
```

### Workflow 4: Full Rebuild After Major Changes

```powershell
# 1. Major refactoring complete
# 2. Run full rebuild
makei rebuild

# 3. Verify all objects on PUB400
# 4. Test all programs
# 5. Commit changes
```

---

## ⚠️ Troubleshooting Quick Fixes

| Problem | Solution |
|---------|----------|
| `makei: command not found` | `pip install tobi` then restart terminal |
| Build fails: "NOVASORC not found" | Create file: `CRTSRCPF FILE(LANUZACX2/NOVASORC) RCDLEN(112)` |
| Build fails: "NOVABND not found" | Create binder: `CRTBNDDIR BNDDIR(LANUZACX2/NOVABND)` |
| Objects not created on PUB400 | Verify: `DSPLIBLIST`, check LANUZACX2 in library list |
| Incremental build always recompiles | Run: `makei rebuild` to force fresh build |
| VS Code tasks not visible | Reload window: `Ctrl+Shift+P` → "Developer: Reload Window" |
| Python version mismatch | Verify: `python --version` (should be 3.6+) |

---

## 📞 Support & Resources

### Documentation Links

- **TOBi Official:** https://ibm.github.io/ibmi-tobi/
- **GNU Make:** https://www.gnu.org/software/make/manual/
- **Code for i:** https://marketplace.visualstudio.com/items?itemName=halcyontechltd.code-for-i

### Project Documentation

- [TOBi Build Recipes](./TOBi_BUILD_RECIPES.md) — Detailed build recipe explanations
- [Project Requirements](./Requerimientos/requerimientos_taller.md) — Functional requirements
- [Review Rules](../../Reglas/Revision_IBMi.md) — Code review standards
- [Skills Guide](../../Skills/SKILL.md) — Development skill definitions

### Contact

- **Author:** Cesar Lanuza
- **Project:** TallerGitHub - IBM i Financial Reconciliation
- **Team:** Novacomp

---

## 📝 Notes

- **First build takes longer** (all objects compiled from scratch)
- **Subsequent builds are fast** (only changed sources recompile)
- **Always commit `Rules.mk`** (build recipe) to version control
- **Test on PUB400 immediately** after build to catch issues early
- **Keep source file extensions exact** (.SQLRPGLE, .RPGLE, .CLE, .SQL)

---

**Status:** ✅ Complete  
**Last Updated:** 2026-06-04
