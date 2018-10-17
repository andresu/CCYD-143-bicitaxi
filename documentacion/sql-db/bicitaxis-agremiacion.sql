-- Table: public."Bicitaxista_agremiacion"

-- DROP TABLE public."Bicitaxista_agremiacion";

CREATE TABLE public."Bicitaxista_agremiacion"
(
    "ID" bigint NOT NULL,
    "Id_User" bigint,
    "Id_Agremiacion" bigint,
    CONSTRAINT "Bicitaxista_agremiacion_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Bicitaxista_agremiacion"
    OWNER to postgres;