-- Table: public.instrument_stock

-- DROP TABLE IF EXISTS public.instrument_stock;

CREATE TABLE IF NOT EXISTS public.instrument_stock
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    price integer NOT NULL,
    type_id integer NOT NULL,
    CONSTRAINT instrument_stock_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_instrument_type FOREIGN KEY (type_id)
        REFERENCES public.instrument_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.instrument_stock
    OWNER to postgres;