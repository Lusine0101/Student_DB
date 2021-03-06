CREATE TABLE public.courses
(
    "course_ID" SERIAL,
    course_name character varying(55) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT courses_pkey PRIMARY KEY ("course_ID")
)


CREATE TABLE public.students
(
    "student_ID" character varying(25) NOT NULL,
    student_name character varying(25)  NOT NULL,
    phone character varying(25) COLLATE pg_catalog."default",
    address character varying(55) COLLATE pg_catalog."default",
    CONSTRAINT students_pkey PRIMARY KEY ("student_ID")
)
CREATE TABLE public.grades
(
    grade integer,
    "student_ID" character varying(25) COLLATE pg_catalog."default" NOT NULL,
    "course_ID" integer NOT NULL,
    CONSTRAINT "FK_courses" FOREIGN KEY ("course_ID")
        REFERENCES public.courses ("course_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "FK_student_ID" FOREIGN KEY ("student_ID")
        REFERENCES public.students ("student_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)