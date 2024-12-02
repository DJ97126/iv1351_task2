-- Table: public.contact_person

-- DROP TABLE IF EXISTS public.contact_person;

CREATE TABLE IF NOT EXISTS public.contact_person
(
    -- Inherited from table public.person: id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    -- Inherited from table public.person: personal_number character varying(12) COLLATE pg_catalog."default",
    -- Inherited from table public.person: first_name character varying(50) COLLATE pg_catalog."default",
    -- Inherited from table public.person: last_name character varying(50) COLLATE pg_catalog."default",
    -- Inherited from table public.person: address character varying(500) COLLATE pg_catalog."default",
    -- Inherited from table public.person: phone_number character varying(50) COLLATE pg_catalog."default",
    -- Inherited from table public.person: mail_address character varying(50) COLLATE pg_catalog."default",
    person_id integer NOT NULL,
    CONSTRAINT contact_person_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_person FOREIGN KEY (person_id)
        REFERENCES public.person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
    INHERITS (public.person)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contact_person
    OWNER to postgres;