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

# Project libraries. TOBi can define CURLIB as an empty value during
# Project Explorer object builds, so use a derived fallback for recipes.
TARGET_LIB := $(if $(strip $(CURLIB)),$(CURLIB),LANUZACX2)
TARGET_OBJLIB := $(if $(strip $(OBJLIB)),$(OBJLIB),LANUZACX2)

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
	mkdir -p "$(CURDIR)/.evfevent"
	system "RUNSQLSTM SRCSTMF('$(CURDIR)/Databases/$*.SQL') COMMIT(*NONE) NAMING(*SYS) DFTRDBCOL($(TARGET_LIB))"

# ============================================================================
# SQLRPGLE Program Build Rules
# ============================================================================
# Pattern rule for SQLRPGLE programs from IFS stream files.
%.PGM: %.SQLRPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTSQLRPGI OBJ($(TARGET_LIB)/$*) SRCSTMF('$(CURDIR)/$<') $(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')"

# Specific program targets - Main reconciliation programs
GLBLN_RECON.PGM: GLBLN_RECON.SQLRPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTSQLRPGI OBJ($(TARGET_LIB)/GLBLN_RECON) SRCSTMF('$(CURDIR)/GLBLN_RECON.SQLRPGLE') $(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')"

JSON_OUTPUT.PGM: JSON_OUTPUT.SQLRPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTSQLRPGI OBJ($(TARGET_LIB)/JSON_OUTPUT) SRCSTMF('$(CURDIR)/JSON_OUTPUT.SQLRPGLE') $(SQLRPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)') ACTGRP('NOVA')"

# ============================================================================
# RPGLE Module Build Rules (for service programs / library code)
# ============================================================================
# Pattern rule for RPGLE modules from IFS stream files.
%.MODULE: %.RPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTRPGMOD MODULE($(TARGET_LIB)/$*) SRCSTMF('$(CURDIR)/$<') $(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')"

# Example modules
GLBLN_DATA.MODULE: GLBLN_DATA.RPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTRPGMOD MODULE($(TARGET_LIB)/GLBLN_DATA) SRCSTMF('$(CURDIR)/GLBLN_DATA.RPGLE') $(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')"

JSON_UTILS.MODULE: JSON_UTILS.RPGLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTRPGMOD MODULE($(TARGET_LIB)/JSON_UTILS) SRCSTMF('$(CURDIR)/JSON_UTILS.RPGLE') $(RPGLEC_OPTS) TGTRLS(*CURRENT) BNDDIR('$(BNDDIR)')"

# ============================================================================
# Service Program Build Rules (Binding modules together)
# ============================================================================
# Build NOVA service program from modules
NOVA.SRVPGM: GLBLN_DATA.MODULE JSON_UTILS.MODULE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTSRVPGM SRVPGM($(TARGET_LIB)/NOVA) MODULE($(TARGET_LIB)/GLBLN_DATA $(TARGET_LIB)/JSON_UTILS) EXPORT(*ALL) BNDDIR('$(BNDDIR)') ACTGRP(*CALLER) TGTRLS(*CURRENT)"

# ============================================================================
# CLLE Program Build Rules (Batch/Orchestration programs)
# ============================================================================
# Pattern rule for CLLE programs from IFS stream files.
%.PGM: %.CLLE
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTBNDCL PGM($(TARGET_LIB)/$*) SRCSTMF('$(CURDIR)/$<') $(CLLEC_OPTS) TGTRLS(*CURRENT)"

# Orchestration program
GLBLN_BATCH.PGM: GLBLN_BATCH.CLLE GLBLN_RECON.PGM JSON_OUTPUT.PGM
	mkdir -p "$(CURDIR)/.evfevent"
	system "CRTBNDCL PGM($(TARGET_LIB)/GLBLN_BATCH) SRCSTMF('$(CURDIR)/GLBLN_BATCH.CLLE') $(CLLEC_OPTS) TGTRLS(*CURRENT)"

# ============================================================================
# TOBi object builds
# ============================================================================
# Keep this file limited to IBM i object targets such as *.FILE, *.PGM,
# *.MODULE, and *.SRVPGM. Project Explorer Build Object parses these targets
# and warns when non-object phony targets such as ALL are present.
