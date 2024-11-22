-- Table: public.teaching_instruments

-- DROP TABLE IF EXISTS public.teaching_instruments;

CREATE TABLE IF NOT EXISTS public.teaching_instruments
(
    instructor_id integer NOT NULL,
    teaching_instruments character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT taching_instruments_pkey PRIMARY KEY (instructor_id),
    CONSTRAINT id_in_instructor FOREIGN KEY (instructor_id)
        REFERENCES public.insctuctor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teaching_instruments
    OWNER to postgres;