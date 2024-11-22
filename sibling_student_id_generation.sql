-- Table: public.sibling_student_id

-- DROP TABLE IF EXISTS public.sibling_student_id;

CREATE TABLE IF NOT EXISTS public.sibling_student_id
(
    student_id integer NOT NULL,
    sibling_student_id character varying(100)[] COLLATE pg_catalog."default",
    CONSTRAINT sibling_student_id_pkey PRIMARY KEY (student_id),
    CONSTRAINT id_in_student FOREIGN KEY (student_id)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sibling_student_id
    OWNER to postgres;