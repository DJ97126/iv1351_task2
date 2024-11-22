-- Table: public.student_id

-- DROP TABLE IF EXISTS public.student_id;

CREATE TABLE IF NOT EXISTS public.student_id
(
    student_id character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    contact_person_id integer NOT NULL,
    CONSTRAINT student_id_pkey PRIMARY KEY (contact_person_id),
    CONSTRAINT id_in_contact_person FOREIGN KEY (contact_person_id)
        REFERENCES public.contact_person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.student_id
    OWNER to postgres;