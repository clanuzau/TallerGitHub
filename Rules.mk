# TOBi Build Rules for TallerGitHub IBM i Reconciliation Project
# Project: GitHub Workshop for IBM i - Reconciliation System
# Library: LANUZACX2
# Author: Cesar Lanuza
# Date: 2026-06-04

# ============================================================================
# Build Configuration
# ============================================================================

# Compiler options for SQLRPGLE programs
SQLRPGLEC_OPTS = OPTIMIZE(*FULL) DATFMT(*ISO) TIMFMT(*ISO) TOSRC(*YES) DBGVIEW(*SOURCE)

# Compiler options for RPGLE programs
RPGLEC_OPTS = OPTIMIZE(*FULL) DATFMT(*ISO) TIMFMT(*ISO) DBGVIEW(*SOURCE)

# Compiler options for CLLE programs
CLLEC_OPTS = OPTION(*EVENTF) DBGVIEW(*SOURCE)

# Binder directory
BNDDIR = NOVABND

# ============================================================================
# Source File Definitions - SQL DDL Scripts
# ============================================================================
# SQL table creation scripts (IFS-based)
GLBLN.FILE: Databases/GLBLN.SQL
ACMST.FILE: Databases/ACMST.SQL
CUMST.FILE: Databases/CUMST.SQL
GLMST.FILE: Databases/GLMST.SQL
TRANS.FILE: Databases/TRANS.SQL
TTRAN.FILE: Databases/TTRAN.SQL
TRDSC.FILE: Databases/TRDSC.SQL
APCLS.FILE: Databases/APCLS.SQL

# ============================================================================
# SQL DDL Build Rules
# ============================================================================
# Pattern rule for SQL DDL stream files deployed in the Databases folder.
%.FILE: Databases/%.SQL
	RUNSQLSTM SRCSTMF('$(CURDIR)/Databases/$*.SQL') COMMIT(*NONE) NAMING(*SQL)

# ============================================================================
# SQLRPGLE Program Build Rules
# ============================================================================
# Pattern rule for SQLRPGLE programs from IFS stream files.
%.pgm: %.SQLRPGLE
	CRTSQLRPGI OBJ($(CURLIB)/$*) SRCSTMF('$(CURDIR)/$<') \
		$(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')

# Specific program targets - Main reconciliation programs
GLBLN_RECON.pgm: GLBLN_RECON.SQLRPGLE
	CRTSQLRPGI OBJ($(CURLIB)/GLBLN_RECON) SRCSTMF('$(CURDIR)/GLBLN_RECON.SQLRPGLE') \
		$(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')

JSON_OUTPUT.pgm: JSON_OUTPUT.SQLRPGLE
	CRTSQLRPGI OBJ($(CURLIB)/JSON_OUTPUT) SRCSTMF('$(CURDIR)/JSON_OUTPUT.SQLRPGLE') \
		$(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')

# ============================================================================
# RPGLE Module Build Rules (for service programs / library code)
# ============================================================================
# Pattern rule for RPGLE modules from IFS stream files.
%.module: %.RPGLE
	CRTRPGMOD MODULE($(CURLIB)/$*) SRCSTMF('$(CURDIR)/$<') \
		$(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')

# Example modules
GLBLN_DATA.module: GLBLN_DATA.RPGLE
	CRTRPGMOD MODULE($(CURLIB)/GLBLN_DATA) SRCSTMF('$(CURDIR)/GLBLN_DATA.RPGLE') \
		$(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')

JSON_UTILS.module: JSON_UTILS.RPGLE
	CRTRPGMOD MODULE($(CURLIB)/JSON_UTILS) SRCSTMF('$(CURDIR)/JSON_UTILS.RPGLE') \
		$(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')

# ============================================================================
# Service Program Build Rules (Binding modules together)
# ============================================================================
# Build NOVA service program from modules
NOVA.srvpgm: GLBLN_DATA.module JSON_UTILS.module
	CRTSRVPGM SRVPGM($(CURLIB)/NOVA) MODULE($(CURLIB)/GLBLN_DATA $(CURLIB)/JSON_UTILS) \
		EXPORT(*ALL) BNDDIR('$(BNDDIR)') ACTGRP(*CALLER) TGTRLS(*CURRENT)

# ============================================================================
# CLLE Program Build Rules (Batch/Orchestration programs)
# ============================================================================
# Pattern rule for CLLE programs from IFS stream files.
%.pgm: %.CLLE
	CRTBNDCL PGM($(CURLIB)/$*) SRCSTMF('$(CURDIR)/$<') \
		$(CLLEC_OPTS) TGTRLS(*CURRENT)

# Orchestration program
GLBLN_BATCH.pgm: GLBLN_BATCH.CLLE GLBLN_RECON.pgm JSON_OUTPUT.pgm
	CRTBNDCL PGM($(CURLIB)/GLBLN_BATCH) SRCSTMF('$(CURDIR)/GLBLN_BATCH.CLLE') \
		$(CLLEC_OPTS) TGTRLS(*CURRENT)

# ============================================================================
# Composite Targets
# ============================================================================
# Build all main components
all: db GLBLN_RECON.pgm JSON_OUTPUT.pgm NOVA.srvpgm GLBLN_BATCH.pgm
	@echo "TOBi build complete: TallerGitHub reconciliation system built successfully"

# Build just modules and service program (library code)
libs: NOVA.srvpgm
	@echo "Service programs built"

# Build just programs (executable objects)
pgms: GLBLN_RECON.pgm JSON_OUTPUT.pgm GLBLN_BATCH.pgm
	@echo "Programs built"

# Build just SQL DDL objects
db: GLBLN.FILE ACMST.FILE CUMST.FILE GLMST.FILE TRANS.FILE TTRAN.FILE TRDSC.FILE APCLS.FILE
	@echo "Database objects created"

# Clean compiled objects (destructive)
clean:
	DLTOBJ OBJ($(CURLIB)/GLBLN_RECON) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/JSON_OUTPUT) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/GLBLN_BATCH) OBJTYPE(*PGM)
	DLTOBJ OBJ($(CURLIB)/NOVA) OBJTYPE(*SRVPGM)
	@echo "Compiled objects deleted"

# Rebuild everything (clean + all)
rebuild: clean all
	@echo "Complete rebuild finished"

# Show build configuration
show-config:
	@echo "=== TallerGitHub TOBi Build Configuration ==="
	@echo "Library: $(CURLIB)"
	@echo "Object Library: LANUZACX2"
	@echo "Binder Directory: $(BNDDIR)"
	@echo "SQLRPGLE Options: $(SQLRPGLEC_OPTS)"
	@echo "RPGLE Options: $(RPGLEC_OPTS)"
	@echo "CLE Options: $(CLLEC_OPTS)"
	@echo "=============================================="

.PHONY: all libs pgms db clean rebuild show-config
