-- Table: public."Zona_localidad"

-- DROP TABLE public."Zona_localidad";

CREATE TABLE public."Zona_localidad"
(
    "ID" bigint NOT NULL,
    "Zona" character varying(30) COLLATE pg_catalog."default",
    "Localidad" character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT "Zona_localidad_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Zona_localidad"
    OWNER to postgres;