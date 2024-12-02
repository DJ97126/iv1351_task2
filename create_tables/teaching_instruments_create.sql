-- Table: public.teaching_instruments

-- DROP TABLE IF EXISTS public.teaching_instruments;

CREATE TABLE IF NOT EXISTS public.teaching_instruments
(
    instructor_id integer NOT NULL,
    type_id integer NOT NULL,
    CONSTRAINT teaching_instruments_pkey PRIMARY KEY (instructor_id, type_id),
    CONSTRAINT id_in_instructor FOREIGN KEY (instructor_id)
        REFERENCES public.instructor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT id_in_instrument_type FOREIGN KEY (type_id)
        REFERENCES public.instrument_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teaching_instruments
    OWNER to postgres;