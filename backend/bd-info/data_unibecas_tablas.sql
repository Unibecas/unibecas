--
-- PostgreSQL database dump
--

\restrict 4USbW2rtILdJ77at6eJoYzjKsyJc4cuNC90QViP6hnxU03XQacNBhMmp5G5YTEn

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-27 15:31:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 41064)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 233 (class 1255 OID 41071)
-- Name: f_unaccent(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.f_unaccent(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
    AS $_$    SELECT public.unaccent('public.unaccent', $1);$_$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 24676)
-- Name: becas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.becas (
    id_beca integer NOT NULL,
    nombre_beca character varying(120) NOT NULL,
    fecha_creacion_sys timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    vigencia_programa character varying(50) DEFAULT 'No definido'::character varying NOT NULL,
    descripcion_informacion text NOT NULL,
    informacion_aplicar text NOT NULL,
    modalidad character varying(50) NOT NULL,
    cobertura text NOT NULL,
    id_universidad_acceso integer,
    estado character varying(20) DEFAULT 'En proceso'::character varying NOT NULL,
    url_informacion character varying(255) NOT NULL,
    proveedor_beca integer NOT NULL,
    CONSTRAINT becas_estado_check CHECK (((estado)::text = ANY (ARRAY[('En proceso'::character varying)::text, ('Activa'::character varying)::text, ('Vencida'::character varying)::text, ('Suspendida'::character varying)::text]))),
    CONSTRAINT becas_modalidad_check CHECK (((modalidad)::text = ANY (ARRAY[('Pregrado'::character varying)::text, ('Posgrado'::character varying)::text, ('Tecnologica'::character varying)::text, ('Tecnica'::character varying)::text])))
);


--
-- TOC entry 221 (class 1259 OID 24696)
-- Name: becas_id_beca_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.becas_id_beca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 221
-- Name: becas_id_beca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.becas_id_beca_seq OWNED BY public.becas.id_beca;


--
-- TOC entry 222 (class 1259 OID 24697)
-- Name: carreras; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carreras (
    id_carrera integer NOT NULL,
    codigo_snies_programa character varying(20) NOT NULL,
    nombre_programa character varying(150) NOT NULL,
    titulo_otorgado character varying(150) NOT NULL,
    nivel_formacion character varying(40) NOT NULL,
    numero_semestres integer NOT NULL,
    creditos_totales integer NOT NULL,
    periodicidad_admision character varying(20) DEFAULT 'Semestral'::character varying,
    id_universidad_fk integer NOT NULL,
    tipo_acreditacion character varying(80) DEFAULT 'Registro Calificado'::character varying CONSTRAINT carreras_estado_not_null NOT NULL,
    CONSTRAINT carreras_creditos_totales_check CHECK ((creditos_totales > 0)),
    CONSTRAINT carreras_nivel_formacion_check CHECK (((nivel_formacion)::text = ANY (ARRAY[('Técnico Profesional'::character varying)::text, ('Tecnólogo'::character varying)::text, ('Pregrado Universitario'::character varying)::text, ('Especialización'::character varying)::text, ('Maestría'::character varying)::text, ('Doctorado'::character varying)::text]))),
    CONSTRAINT carreras_numero_semestres_check CHECK ((numero_semestres > 0)),
    CONSTRAINT carreras_periodicidad_admision_check CHECK (((periodicidad_admision)::text = ANY (ARRAY[('Semestral'::character varying)::text, ('Anual'::character varying)::text]))),
    CONSTRAINT chk_carreras_estado CHECK (((tipo_acreditacion)::text = ANY (ARRAY[('Registro Calificado'::character varying)::text, ('Acreditacion de Alta Calidad'::character varying)::text, ('No definido'::character varying)::text])))
);


--
-- TOC entry 223 (class 1259 OID 24716)
-- Name: carreras_id_carrera_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carreras_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 223
-- Name: carreras_id_carrera_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carreras_id_carrera_seq OWNED BY public.carreras.id_carrera;


--
-- TOC entry 224 (class 1259 OID 24717)
-- Name: entidades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entidades (
    id_entidad integer NOT NULL,
    nom_ent character varying(120) NOT NULL,
    tipo_ent character varying(120) DEFAULT 'N/A'::character varying NOT NULL,
    nit_ent character varying(40) DEFAULT 'No hay datos'::character varying NOT NULL,
    CONSTRAINT entidades_tipo_ent_check CHECK (((tipo_ent)::text = ANY (ARRAY[('N/A'::character varying)::text, ('Entidad Publica'::character varying)::text, ('IES'::character varying)::text, ('Entidades Privadas'::character varying)::text, ('ESAL o Fundacion'::character varying)::text, ('Organismo Internacional'::character varying)::text])))
);


--
-- TOC entry 225 (class 1259 OID 24727)
-- Name: entidades_id_entidad_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.entidades_id_entidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 225
-- Name: entidades_id_entidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.entidades_id_entidad_seq OWNED BY public.entidades.id_entidad;


--
-- TOC entry 226 (class 1259 OID 24728)
-- Name: universidades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.universidades (
    id_universidad integer NOT NULL,
    nom_institucion character varying(120) NOT NULL,
    siglas character varying(25) DEFAULT 'No aplica'::character varying,
    codigo_snies character varying(28) NOT NULL,
    mod_presencial boolean DEFAULT true NOT NULL,
    mod_virtual boolean DEFAULT true NOT NULL,
    mod_hibrida boolean DEFAULT true NOT NULL,
    mod_adistancia boolean DEFAULT true NOT NULL,
    ciudad character varying(80) NOT NULL,
    departamento character varying(80) NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 24745)
-- Name: universidades_id_universidad_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.universidades_id_universidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 227
-- Name: universidades_id_universidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.universidades_id_universidad_seq OWNED BY public.universidades.id_universidad;


--
-- TOC entry 228 (class 1259 OID 41098)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuarios (
    id_usuario character varying(255) NOT NULL,
    username character varying(24) NOT NULL,
    email character varying(56) NOT NULL,
    psswd text NOT NULL,
    estado_est character varying(30) DEFAULT 'No aplica'::character varying NOT NULL,
    descripcion character varying(120),
    rol character varying(80) DEFAULT 'Usuario'::character varying NOT NULL,
    token_version integer DEFAULT 0 NOT NULL,
    CONSTRAINT usuarios_estado_est_check CHECK (((estado_est)::text = ANY ((ARRAY['Aspirante'::character varying, 'Estudiante'::character varying, 'No aplica'::character varying])::text[]))),
    CONSTRAINT usuarios_rol_check CHECK (((rol)::text = ANY ((ARRAY['Admin'::character varying, 'Usuario'::character varying])::text[])))
);


--
-- TOC entry 4782 (class 2604 OID 41072)
-- Name: becas id_beca; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.becas ALTER COLUMN id_beca SET DEFAULT nextval('public.becas_id_beca_seq'::regclass);


--
-- TOC entry 4786 (class 2604 OID 41073)
-- Name: carreras id_carrera; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carreras ALTER COLUMN id_carrera SET DEFAULT nextval('public.carreras_id_carrera_seq'::regclass);


--
-- TOC entry 4789 (class 2604 OID 41074)
-- Name: entidades id_entidad; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entidades ALTER COLUMN id_entidad SET DEFAULT nextval('public.entidades_id_entidad_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 41075)
-- Name: universidades id_universidad; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universidades ALTER COLUMN id_universidad SET DEFAULT nextval('public.universidades_id_universidad_seq'::regclass);


--
-- TOC entry 4812 (class 2606 OID 24769)
-- Name: becas becas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.becas
    ADD CONSTRAINT becas_pkey PRIMARY KEY (id_beca);


--
-- TOC entry 4815 (class 2606 OID 24771)
-- Name: carreras carreras_codigo_snies_programa_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_codigo_snies_programa_key UNIQUE (codigo_snies_programa);


--
-- TOC entry 4817 (class 2606 OID 24773)
-- Name: carreras carreras_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id_carrera);


--
-- TOC entry 4819 (class 2606 OID 24775)
-- Name: entidades entidades_nit_ent_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entidades
    ADD CONSTRAINT entidades_nit_ent_key UNIQUE (nit_ent);


--
-- TOC entry 4821 (class 2606 OID 24777)
-- Name: entidades entidades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entidades
    ADD CONSTRAINT entidades_pkey PRIMARY KEY (id_entidad);


--
-- TOC entry 4823 (class 2606 OID 24779)
-- Name: universidades universidades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (id_universidad);


--
-- TOC entry 4825 (class 2606 OID 41118)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4827 (class 2606 OID 41114)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4829 (class 2606 OID 41116)
-- Name: usuarios usuarios_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_username_key UNIQUE (username);


--
-- TOC entry 4813 (class 1259 OID 41077)
-- Name: idx_becas_nombre_unaccent; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_becas_nombre_unaccent ON public.becas USING btree (public.f_unaccent(lower((nombre_beca)::text)));


--
-- TOC entry 4830 (class 2606 OID 24784)
-- Name: becas becas_id_universidad_acceso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.becas
    ADD CONSTRAINT becas_id_universidad_acceso_fkey FOREIGN KEY (id_universidad_acceso) REFERENCES public.universidades(id_universidad) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4832 (class 2606 OID 24789)
-- Name: carreras carreras_id_universidad_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_id_universidad_fk_fkey FOREIGN KEY (id_universidad_fk) REFERENCES public.universidades(id_universidad) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4831 (class 2606 OID 24794)
-- Name: becas proveedor_beca_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.becas
    ADD CONSTRAINT proveedor_beca_fk FOREIGN KEY (proveedor_beca) REFERENCES public.entidades(id_entidad);


-- Completed on 2026-11-27 15:32:00

--
-- PostgreSQL database dump complete
--

\unrestrict 4USbW2rtILdJ77at6eJoYzjKsyJc4cuNC90QViP6hnxU03XQacNBhMmp5G5YTEn

