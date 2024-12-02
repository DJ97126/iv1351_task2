-- Table: public.booking

-- DROP TABLE IF EXISTS public.booking;

CREATE TABLE IF NOT EXISTS public.booking
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    date timestamp(0) without time zone NOT NULL,
    location character varying(500) COLLATE pg_catalog."default" NOT NULL,
    lesson_type "lesson_type_ENUM" NOT NULL,
    room_id integer NOT NULL,
    db_student_id integer NOT NULL,
    CONSTRAINT booking_pkey PRIMARY KEY (id),
    CONSTRAINT room_id UNIQUE (room_id),
    CONSTRAINT id_in_student FOREIGN KEY (db_student_id)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.booking
    OWNER to postgres;