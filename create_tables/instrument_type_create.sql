-- Table: public.instrument_type

-- DROP TABLE IF EXISTS public.instrument_type;

CREATE TABLE IF NOT EXISTS public.instrument_type
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    type character varying(50) COLLATE pg_catalog."default" NOT NULL,
    brand character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT instrument_type_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.instrument_type
    OWNER to postgres;