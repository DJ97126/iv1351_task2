-- Table: public.student

-- DROP TABLE IF EXISTS public.student;

CREATE TABLE IF NOT EXISTS public.student
(
    -- Inherited from table public.person: id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    -- Inherited from table public.person: personal_number character varying(12)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.person: name character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.person: address character varying(500)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.person: phone_number character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.person: mail_address character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    student_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    contact_person_pn character varying(12)[] COLLATE pg_catalog."default",
    person_id integer NOT NULL,
    contact_person_id integer NOT NULL,
    CONSTRAINT student_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_contact_person FOREIGN KEY (contact_person_id)
        REFERENCES public.contact_person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_in_person FOREIGN KEY (person_id)
        REFERENCES public.person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
    INHERITS (public.person)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.student
    OWNER to postgres;