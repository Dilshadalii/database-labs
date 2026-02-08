--
-- PostgreSQL database dump
--

\restrict 0SsbaoDvOze8kE2LaRKty65BaSbTpViMwfhVksHKEEdSLiAVh71sF0mVwoq2gv7

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: students; Type: TABLE; Schema: public; Owner: dilshadali
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    department character varying(100),
    cgpa numeric(3,2),
    CONSTRAINT students_age_check CHECK ((age > 0)),
    CONSTRAINT students_cgpa_check CHECK (((cgpa >= (0)::numeric) AND (cgpa <= 4.0)))
);


ALTER TABLE public.students OWNER TO dilshadali;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: dilshadali
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO dilshadali;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dilshadali
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: dilshadali
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: dilshadali
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 0SsbaoDvOze8kE2LaRKty65BaSbTpViMwfhVksHKEEdSLiAVh71sF0mVwoq2gv7

