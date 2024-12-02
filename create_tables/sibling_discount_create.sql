-- Table: public.sibling_discount

-- DROP TABLE IF EXISTS public.sibling_discount;

CREATE TABLE IF NOT EXISTS public.sibling_discount
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    discount_percentage double precision NOT NULL,
    student_id integer NOT NULL,
    CONSTRAINT sibling_discount_pkey PRIMARY KEY (id),
    CONSTRAINT id_in_student FOREIGN KEY (student_id)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sibling_discount
    OWNER to postgres;