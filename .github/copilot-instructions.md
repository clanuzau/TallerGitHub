# Project : GitHub Workshop for IBM i

## Project Overview
This is a begining project to start using all AI features to develop an aplication for IBM i using RPGLE, SQLRPGLE, CLLE programs and all objects related on OS/400.

The main goal is to generate a .json object (file) that will placed on IBM i IFS.



## Tech Stack
- **Main Programming Languague:** RPGLE free format
- **Additional Programming Languagues:** SQLRPGLE, CLLE
- **Platform:** PUB400 - IBM i
- **Core:** IBM i V7R5M0
- **Object Types:** *BNDDIR, *PGM, *SRVPGM, *MODULES, *DTAQ, *FILE,
- **Object Attributes:** RPGLE, SQLRPGLE, DSPF, PRTF, PF, LF, SQL, TXT, PF-SRC

## Setup and Installation

## Project Structure
**Library** LANUZACX2 - PUB400
**Test:** Main procedures need to have RPGUnit Testing


## Usage Heading Coding Example for all type of source created.
- **Author:** Cesar Lanuza
- **Project:** GitHub Workshop for IBM i
- **Date:** Set to current date
- **Program Name:** Place the current program/source name.

## SQL Source Creation (RUNSQLSTM)
For every source SQL (TXT) created must include:
- NOT NULL WITH DEFAULT,
- LABEL COLUNM for every field definition
- LABEL COLUMN TEXT for every field definition
- When Field Type is a ZONED, must be DECIMAL type in SQL
- When Field Type is a PACKED, must be NUMERIC type in SQL

## SQLRPGLE and RPGLE source creation
For all sources SQLRPGLE or RPGLE, must include in the two first lines:
**free
ctl-opt DFTACTGRP(*NO) ACTGRP('NOVA') OPTION(*SRCSTMT : *NODEBUGIO) BNDDIR('NOVABND');



