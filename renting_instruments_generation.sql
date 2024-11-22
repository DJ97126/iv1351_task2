-- Table: public.renting_instruments

-- DROP TABLE IF EXISTS public.renting_instruments;

CREATE TABLE IF NOT EXISTS public.renting_instruments
(
    renting_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    student_id integer NOT NULL,
    price integer NOT NULL,
    max_period timestamp(0) without time zone NOT NULL,
    max_quantity integer NOT NULL,
    instrument_stock_id integer NOT NULL,
    CONSTRAINT renting_instruments_pkey PRIMARY KEY (student_id, renting_id),
    CONSTRAINT id_in_instrument_stock FOREIGN KEY (instrument_stock_id)
        REFERENCES public.instrument_stock (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_in_student FOREIGN KEY (student_id)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.renting_instruments
    OWNER to postgres;