--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-09-08 17:00:48

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
-- TOC entry 214 (class 1259 OID 16419)
-- Name: Table1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE DATABASE "Test"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public."Table1" (
    id integer NOT NULL,
    "numeric" numeric NOT NULL,
    "char" character varying NOT NULL,
    date date NOT NULL,
    "int" integer NOT NULL
);


ALTER TABLE public."Table1" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16424)
-- Name: Table2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Table2" (
    id integer NOT NULL,
    "numeric" numeric NOT NULL,
    "char" character varying NOT NULL,
    date date NOT NULL,
    "int" integer NOT NULL,
    table1_id integer
);


ALTER TABLE public."Table2" OWNER TO postgres;

--
-- TOC entry 3177 (class 2606 OID 16430)
-- Name: Table1 Table1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Table1"
    ADD CONSTRAINT "Table1_pkey" PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 16432)
-- Name: Table2 Table2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Table2"
    ADD CONSTRAINT "Table2_pkey" PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 16433)
-- Name: Table2 fk_table1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Table2"
    ADD CONSTRAINT fk_table1 FOREIGN KEY (table1_id) REFERENCES public."Table1"(id) NOT VALID;


-- Completed on 2023-09-08 17:00:48

--
-- PostgreSQL database dump complete
--

