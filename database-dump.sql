--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-15 16:16:14 CEST

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16385)
-- Name: newtable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.newtable (
    column1 character varying,
    column2 character varying
);


ALTER TABLE public.newtable OWNER TO postgres;

--
-- TOC entry 3985 (class 0 OID 16385)
-- Dependencies: 200
-- Data for Name: newtable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.newtable (column1, column2) FROM stdin;
rec1col1	rec1col2
rec2col1	rec2col2
\.


-- Completed on 2021-06-15 16:16:15 CEST

--
-- PostgreSQL database dump complete
--

