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
All sources created, must be located on:
- PUB400: Source : LANUZACX2/NOVASORC with their respective type and the end of the name, eg. MYSOURCE.SQLRPGLE, MYSQL.SQL

## Project Structure
**Library** LANUZACX2 - PUB400
**Test:** Main procedures need to have RPGUnit Testing


## Usage Heading Coding Example for all type of source created.
- **Author:** Cesar Lanuza
- **Project:** GitHub Workshop for IBM i
- **Date:** Set to current date and local time in ISO format (YYYY-MM-DD) for both
- **Program Name:** Place the current program/source name.

## SQL Source Creation (RUNSQLSTM)
For every source SQL (TXT) created: 
- ADD RCDFMT keyword for every SQL created with an R followed by the name of the table and end with an ;
- The structure to define LABEL ON COLUMN must be: LABEL ON COLUMN {FileName} and then define all the fields withou adding {FileName} at the begining of the field. Replace {FileName} with the name of the file being created.
- LABEL COLUMN TEXT for every field definition. DO NOT ADD the table name, just the field name. Take as reference the same as "LABEL ON COLUMN" instruction.
- ADD LABEL ON TABLE with the description of the table being created. DO NOT ADD the table name, just the field name.
- NOT NULL WITH DEFAULT,
- LABEL ON COLUNM for every field definition. DO NOT ADD the table name, just the field name.
- COMMENT ON COLUMN for every field definition. DO NOT ADD the table name, just the field name.
- DO NOT ADD COMMIT instruction at the end of the file.

## SQLRPGLE and RPGLE source creation
For all sources SQLRPGLE or RPGLE, must include in the two first lines:
- **free
- ctl-opt DFTACTGRP(*NO) ACTGRP('NOVA') OPTION(*SRCSTMT : *NODEBUGIO) BNDDIR('NOVABND');



