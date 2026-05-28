SET SCHEMA 'DETRI1';

SELECT * FROM SISPROV;

-- FUNCIÓN JSON_OBJECT. TRANSFORMAR LOS PARAMETROS A FORMATO JSON
SELECT JSON_OBJECT(KEY 'ID_PROVINCIA' VALUE ID_PROVINCIA,
                   KEY 'NOMBRE_PROVINCIA' VALUE TRIM(NOMBRE_PROVINCIA))
FROM SISPROV;

-- FUNCIÓN JSON_ARRAYAGG
SELECT JSON_OBJECT(KEY 'PROVINCIAS' VALUE JSON_ARRAYAGG(
                                                JSON_OBJECT(KEY 'ID_PROVINCIA' VALUE ID_PROVINCIA,
                                                            KEY 'NOMBRE_PROVINCIA' VALUE TRIM(NOMBRE_PROVINCIA))
                                                        )
                  )
FROM SISPROV;

SET SCHEMA 'ESCAN1';

SELECT * FROM SBEPRO;
SELECT * FROM SBECAN;
SELECT * FROM SBEDIS;

SELECT *
FROM SBEPRO P INNER JOIN SBECAN C ON 
        P.ID_PROVINCIA = C.ID_PROVINCIA
     INNER JOIN SBEDIS D ON 
        C.ID_CANTON = D.ID_CANTON;
        

SELECT JSON_OBJECT(KEY 'PROVINCIAS' VALUE JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_PROVINCIA' VALUE P.ID_PROVINCIA,
                                                                    KEY 'NOMBE_PROVINCIA' VALUE TRIM(P.NOMBRE_PROVINCIA),
                                                                    KEY 'CANTONES_ASOCIADOS' VALUE (SELECT JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_CANTON' VALUE C.ID_CANTON,
                                                                                                                                    KEY 'NOMBRE_CANTON' VALUE TRIM(C.NOMBRE_CANTON),
                                                                                                                                    KEY 'DISTRITOS_ASOCIADOS' VALUE (SELECT JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_DISTRITO' VALUE D.ID_DISTRITO,
                                                                                                                                                                                                      KEY 'NOMBRE_DISTRITO' VALUE TRIM(D.NOMBRE_DISTRITO)
                                                                                                                                                                                                      )
                                                                                                                                                                                         )
                                                                                                                                                                     FROM SBEDIS D 
                                                                                                                                                                     WHERE D.ID_CANTON = C.ID_CANTON 
                                                                                                                                                                     ) format json
                                                                                                                                    )
                                                                                                                        )            
                                                                                                    FROM SBECAN C 
                                                                                                    WHERE C.ID_PROVINCIA = P.ID_PROVINCIA
                                                                                                   ) format json
                                                                    )
                                                        )
                   )
FROM SBEPRO P;


WITH JSON_DIS AS(
SELECT D.ID_CANTON, JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_DISTRITO' VALUE D.ID_DISTRITO,
                                              KEY 'NOMBRE_DISTRITO' VALUE TRIM(D.NOMBRE_DISTRITO))
                                  ) AS ARREGLO_DISTRITO
FROM SBEDIS D
GROUP BY D.ID_CANTON
),

JSON_DISCAN AS(
SELECT C.ID_PROVINCIA, JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_CANTON' VALUE C.ID_CANTON,
                                                 KEY 'NOMBRE_CANTON' VALUE TRIM(C.NOMBRE_CANTON),
                                                 KEY 'DISTRITOS_ASOCIADOS' VALUE D.ARREGLO_DISTRITO FORMAT JSON
                                                 )
                                    ) AS ARREGLO_CANTONES
FROM SBECAN C INNER JOIN JSON_DIS D ON
        C.ID_CANTON = D.ID_CANTON
GROUP BY C.ID_PROVINCIA
)

SELECT JSON_OBJECT(KEY 'PROVINCIAS' VALUE JSON_ARRAYAGG(JSON_OBJECT(KEY 'ID_PROVINCIA' VALUE P.ID_PROVINCIA,
                                                                    KEY 'NOMBRE_PROVINCIA' VALUE TRIM(P.NOMBRE_PROVINCIA),
                                                                    KEY 'CANTONES_ASOCIADOS' VALUE C.ARREGLO_CANTONES FORMAT JSON
                                                                    )
                                                        )
                   )
FROM SBEPRO P INNER JOIN JSON_DISCAN C ON
        P.ID_PROVINCIA = C.ID_PROVINCIA;




