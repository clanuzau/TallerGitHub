# IBM i Reference Map

Use these references when implementing or reviewing TallerGitHub IBM i work. Load only the relevant source for the immediate task.

## Local References

- `Documentacion_IBMi/ILE Reference Guide.pdf`: RPG IV / ILE RPG language reference, including control options, definitions, prototypes, procedures, built-in functions, operation codes, error handling, and compiler behavior.
- `Documentacion_IBMi/Working with JSON in RPG.pdf`: RPG-focused JSON techniques, including RPG structured data, JSON parsing/generation patterns, and DATA-INTO / DATA-GEN style workflows.
- `Documentacion_IBMi/Codigo_Ejemplos/EjemploJSON.sql`: local SQL JSON example.
- `Documentacion_IBMi/Codigo_Ejemplos/GrabaIFS.sql`: local IFS write example.
- `Documentacion_IBMi/Codigo_Ejemplos/PracticaJSON.sql`: local JSON practice example.

## Official IBM References

- ILE RPG Reference: https://www.ibm.com/docs/en/i/7.4?topic=rpg-ile-reference
- ILE RPG Programmer's Guide: https://www.ibm.com/docs/en/i/7.5.0?topic=rpg-ile-programmers-guide
- RPG Programming in ILE: https://www.ibm.com/docs/ro/ssw_ibm_i_74/rzasc/rpgpgmile.htm
- RPG DATA-GEN operation: https://www.ibm.com/docs/ssw_ibm_i_74/rzasd/zzdatagen.htm
- Db2 for i JSON_OBJECT: https://www.ibm.com/support/knowledgecenter/ssw_ibm_i_76/db2/rbafzscajsonobject.htm

## Selection Guidance

- Use SQL JSON functions when assembling result sets directly from GLBLN, TRANS, TTRAN, TRDSC, and related tables.
- Use RPG JSON generation when business logic is applied in service procedures before serialization.
- Use ILE service programs when procedures are shared by the main reconciliation program, JSON output program, and tests.
- Use explicit error handling for database access and IFS writes. Incident severity must propagate into `ejecucion.estadoEjecucion`.
