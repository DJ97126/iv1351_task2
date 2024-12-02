-- Table: public.pricing_schema

-- DROP TABLE IF EXISTS public.pricing_schema;

CREATE TABLE IF NOT EXISTS public.pricing_schema
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    skill_level "level_ENUM" NOT NULL,
    lesson_type "lesson_type_ENUM" NOT NULL,
    price integer NOT NULL,
    valid_from timestamp(0) without time zone NOT NULL,
    valid_until timestamp(0) without time zone NOT NULL,
    CONSTRAINT pricing_schema_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_schema
    OWNER to postgres;