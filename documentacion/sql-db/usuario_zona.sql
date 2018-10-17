-- Table: public."Usuario_zona"

-- DROP TABLE public."Usuario_zona";

CREATE TABLE public."Usuario_zona"
(
    "ID" bigint NOT NULL,
    "Fecha_creacion" date,
    "Fecha_modificacion" date,
    "Id_Usuario" bigint,
    "Id_Zona_Localidad" bigint,
    CONSTRAINT "Usuario_zona_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Usuario_zona"
    OWNER to postgres;