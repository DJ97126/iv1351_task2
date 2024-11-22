-- Table: public.ensemble

-- DROP TABLE IF EXISTS public.ensemble;

CREATE TABLE IF NOT EXISTS public.ensemble
(
    -- Inherited from table public.lesson: id integer NOT NULL,
    -- Inherited from table public.lesson: lesson_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: skill_level character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: schedule character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: room_id character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.lesson: pricing_schema_id integer NOT NULL,
    -- Inherited from table public.lesson: instructor_id integer NOT NULL,
    -- Inherited from table public.lesson: booking_id integer NOT NULL,
    ensemble_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    genre character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    list_of_students character varying(2000)[] COLLATE pg_catalog."default" NOT NULL,
    max_students integer NOT NULL,
    min_students integer NOT NULL,
    db_lesson_id integer NOT NULL,
    CONSTRAINT ensemble_pkey PRIMARY KEY (ensemble_id, db_lesson_id),
    CONSTRAINT id_in_lesson FOREIGN KEY (db_lesson_id)
        REFERENCES public.lesson (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)
    INHERITS (public.lesson)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ensemble
    OWNER to postgres;