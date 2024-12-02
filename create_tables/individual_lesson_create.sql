-- Table: public.individual_lesson

-- DROP TABLE IF EXISTS public.individual_lesson;

CREATE TABLE IF NOT EXISTS public.individual_lesson
(
    -- Inherited from table public.lesson: id integer NOT NULL,
    -- Inherited from table public.lesson: lesson_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: skill_level "level_ENUM" NOT NULL,
    -- Inherited from table public.lesson: pricing_schema_id integer NOT NULL,
    -- Inherited from table public.lesson: instructor_id integer NOT NULL,
    -- Inherited from table public.lesson: lesson_session_id integer NOT NULL,
    type_id integer NOT NULL,
    db_lesson_id integer NOT NULL,
    CONSTRAINT individual_lesson_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_instrument_type FOREIGN KEY (type_id)
        REFERENCES public.instrument_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_in_lesson FOREIGN KEY (db_lesson_id)
        REFERENCES public.lesson (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)
    INHERITS (public.lesson)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.individual_lesson
    OWNER to postgres;