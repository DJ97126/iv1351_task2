-- Table: public.lesson

-- DROP TABLE IF EXISTS public.lesson;

CREATE TABLE IF NOT EXISTS public.lesson
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    lesson_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    skill_level "level_ENUM" NOT NULL,
    pricing_schema_id integer NOT NULL,
    instructor_id integer NOT NULL,
    lesson_session_id integer NOT NULL,
    CONSTRAINT lesson_pkey PRIMARY KEY (id),
    CONSTRAINT lesson_id UNIQUE (lesson_id),
    CONSTRAINT id_in_instructor FOREIGN KEY (instructor_id)
        REFERENCES public.instructor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_in_lesson_session FOREIGN KEY (lesson_session_id)
        REFERENCES public.lesson_session (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_in_price_schema FOREIGN KEY (pricing_schema_id)
        REFERENCES public.pricing_schema (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lesson
    OWNER to postgres;