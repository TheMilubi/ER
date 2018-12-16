-- Generado por Oracle SQL Developer Data Modeler 18.3.0.268.1156
--   en:        2018-12-10 13:49:35 CET
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c



CREATE TABLE modulo (
    idmodulo      INTEGER NOT NULL,
    nombre        VARCHAR2(15 CHAR) NOT NULL,
    codprofesor   INTEGER NOT NULL
);

ALTER TABLE modulo ADD CONSTRAINT modulo_pk PRIMARY KEY ( idmodulo );

CREATE TABLE profesor (
    idprofesor   INTEGER NOT NULL,
    nombre       VARCHAR2(20 CHAR) NOT NULL,
    direccion    VARCHAR2(25 CHAR) NOT NULL,
    fechanac     DATE NOT NULL
);

ALTER TABLE profesor ADD CONSTRAINT profesor_pk PRIMARY KEY ( idprofesor );

ALTER TABLE modulo
    ADD CONSTRAINT modulo_profesor_fk FOREIGN KEY ( codprofesor )
        REFERENCES profesor ( idprofesor );

ALTER TABLE modulo
    ADD CONSTRAINT modulo_profesor_fk FOREIGN KEY ( codprofesor )
        REFERENCES profesor ( idprofesor );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              4
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
