-- Table: public.pricing_schema

-- DROP TABLE IF EXISTS public.pricing_schema;

CREATE TABLE IF NOT EXISTS public.pricing_schema
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    price_beginner integer,
    price_intermediate integer,
    price_advance integer,
    price_group integer,
    price_ensemble integer,
    sibling_discount integer NOT NULL,
    valid_from timestamp(0) without time zone NOT NULL,
    valid_to timestamp(0) without time zone NOT NULL,
    CONSTRAINT pricing_schema_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_schema
    OWNER to postgres;