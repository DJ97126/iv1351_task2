-- Table: public.renting_instruments

-- DROP TABLE IF EXISTS public.renting_instruments;

CREATE TABLE IF NOT EXISTS public.renting_instruments
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    rented_until timestamp(0) without time zone NOT NULL,
    rented_by integer NOT NULL,
    instrument_id integer NOT NULL,
    CONSTRAINT renting_instruments_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_instrument_stock FOREIGN KEY (instrument_id)
        REFERENCES public.instrument_stock (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_in_student FOREIGN KEY (rented_by)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.renting_instruments
    OWNER to postgres;