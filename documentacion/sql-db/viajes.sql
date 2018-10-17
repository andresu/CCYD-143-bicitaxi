-- Table: public."Viajes"

-- DROP TABLE public."Viajes";

CREATE TABLE public."Viajes"
(
    "ID" bigint NOT NULL,
    "Fecha_creacion" date,
    "Fecha_modificacion" date,
    "Valor" bigint,
    "Usuario_solicitante" bigint,
    "Usuario_bicitaxista" bigint,
    "Fecha_viaje" date,
    "Puntaje" bigint,
    CONSTRAINT "VIAJES_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Viajes"
    OWNER to postgres;