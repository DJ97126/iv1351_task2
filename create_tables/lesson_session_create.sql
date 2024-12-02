-- Table: public.lesson_session

-- DROP TABLE IF EXISTS public.lesson_session;

CREATE TABLE IF NOT EXISTS public.lesson_session
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    instructor_id integer NOT NULL,
    session_start timestamp(0) without time zone NOT NULL,
    session_end timestamp(0) without time zone NOT NULL,
    CONSTRAINT lesson_session_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_instructor FOREIGN KEY (instructor_id)
        REFERENCES public.instructor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lesson_session
    OWNER to postgres;