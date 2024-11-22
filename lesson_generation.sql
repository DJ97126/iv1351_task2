-- Table: public.lesson

-- DROP TABLE IF EXISTS public.lesson;

CREATE TABLE IF NOT EXISTS public.lesson
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    lesson_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    skill_level character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    schedule character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    room_id character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    pricing_schema_id integer NOT NULL,
    instructor_id integer NOT NULL,
    booking_id integer NOT NULL,
    CONSTRAINT lesson_pkey PRIMARY KEY (id),
    CONSTRAINT lesson_id UNIQUE (lesson_id),
    CONSTRAINT id_in_booking FOREIGN KEY (booking_id)
        REFERENCES public.booking (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_in_instructor FOREIGN KEY (instructor_id)
        REFERENCES public.insctuctor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_in_pricing_schema FOREIGN KEY (pricing_schema_id)
        REFERENCES public.pricing_schema (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lesson
    OWNER to postgres;