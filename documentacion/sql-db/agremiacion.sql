-- Table: public."Agremiacion"

-- DROP TABLE public."Agremiacion";

CREATE TABLE public."Agremiacion"
(
    "ID" bigint NOT NULL,
    "Nombre_agremiacion" character varying(30) COLLATE pg_catalog."default",
    "Telefono_agremiacion" character varying(30) COLLATE pg_catalog."default",
    "Email_agremiacion" character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT "Agremiacion_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Agremiacion"
    OWNER to postgres;