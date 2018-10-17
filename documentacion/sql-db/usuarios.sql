-- Table: public."Usuarios"

-- DROP TABLE public."Usuarios";

CREATE TABLE public."Usuarios"
(
    "ID" bigint NOT NULL,
    "Fecha_creacion" date,
    "Fecha_modificacion" date,
    "Nombres" character varying(20) COLLATE pg_catalog."default",
    "Apellidos" character varying(30) COLLATE pg_catalog."default",
    "Cedula" character varying(20) COLLATE pg_catalog."default",
    "Sexo" "char",
    "Email" character varying(30) COLLATE pg_catalog."default",
    "Telefono" character varying(25) COLLATE pg_catalog."default",
    "Usuario_nombre" character varying(25) COLLATE pg_catalog."default",
    "Usuario_contrasena" character varying(25) COLLATE pg_catalog."default",
    "Rol" "char",
    "Fecha_nacimiento" date,
    "Horario" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "No_chasis_vehiculo" character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Usuarios_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Usuarios"
    OWNER to postgres;