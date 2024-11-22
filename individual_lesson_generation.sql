-- Table: public.individual_lesson

-- DROP TABLE IF EXISTS public.individual_lesson;

CREATE TABLE IF NOT EXISTS public.individual_lesson
(
    -- Inherited from table public.lesson: id integer NOT NULL,
    -- Inherited from table public.lesson: lesson_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: skill_level character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: schedule character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: room_id character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: pricing_schema_id integer NOT NULL,
    -- Inherited from table public.lesson: instructor_id integer NOT NULL,
    -- Inherited from table public.lesson: booking_id integer NOT NULL,
    individual_lesson_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    db_lesson_id integer NOT NULL,
    type_of_instrument character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT individual_lesson_pkey PRIMARY KEY (db_lesson_id, individual_lesson_id),
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