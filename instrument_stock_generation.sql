-- Table: public.instrument_stock

-- DROP TABLE IF EXISTS public.instrument_stock;

CREATE TABLE IF NOT EXISTS public.instrument_stock
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    type_of_instrument character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    brand character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    price integer NOT NULL,
    instrument_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT instrument_stock_pkey PRIMARY KEY (id),
    CONSTRAINT instrument_id UNIQUE (instrument_id)
        INCLUDE(instrument_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.instrument_stock
    OWNER to postgres;