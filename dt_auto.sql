--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-11 00:31:01

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
-- TOC entry 215 (class 1259 OID 16511)
-- Name: manufacturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturers (
    id integer NOT NULL,
    name character varying(150) DEFAULT 'lore'::character varying NOT NULL
);


ALTER TABLE public.manufacturers OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16510)
-- Name: manufacturers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturers_id_seq OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 214
-- Name: manufacturers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturers_id_seq OWNED BY public.manufacturers.id;


--
-- TOC entry 221 (class 1259 OID 16537)
-- Name: manufacturers_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturers_models (
    id integer NOT NULL,
    manufacturer_id integer DEFAULT 0 NOT NULL,
    model_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.manufacturers_models OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16536)
-- Name: manufacturers_models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturers_models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturers_models_id_seq OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 220
-- Name: manufacturers_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturers_models_id_seq OWNED BY public.manufacturers_models.id;


--
-- TOC entry 217 (class 1259 OID 16519)
-- Name: models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.models (
    id integer NOT NULL,
    title character varying(150) DEFAULT 'noname'::character varying NOT NULL,
    type_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.models OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16518)
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.models_id_seq OWNER TO postgres;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;


--
-- TOC entry 219 (class 1259 OID 16528)
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    type_id integer NOT NULL,
    type character varying(150) DEFAULT 'unknown'::character varying NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16527)
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.type_id;


--
-- TOC entry 3188 (class 2604 OID 16514)
-- Name: manufacturers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers ALTER COLUMN id SET DEFAULT nextval('public.manufacturers_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 16540)
-- Name: manufacturers_models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers_models ALTER COLUMN id SET DEFAULT nextval('public.manufacturers_models_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16522)
-- Name: models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 16531)
-- Name: types type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN type_id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- TOC entry 3349 (class 0 OID 16511)
-- Dependencies: 215
-- Data for Name: manufacturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturers (id, name) FROM stdin;
1	Volkswagen
2	BMW
3	Mercedes
4	Toyota
5	Honda
\.


--
-- TOC entry 3355 (class 0 OID 16537)
-- Dependencies: 221
-- Data for Name: manufacturers_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturers_models (id, manufacturer_id, model_id) FROM stdin;
1	1	1
2	2	5
3	3	4
4	4	3
5	5	2
\.


--
-- TOC entry 3351 (class 0 OID 16519)
-- Dependencies: 217
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.models (id, title, type_id) FROM stdin;
1	Passat	1
2	Odissey	5
3	Corolla	4
4	W111	2
5	X5	3
6	Accord	0
\.


--
-- TOC entry 3353 (class 0 OID 16528)
-- Dependencies: 219
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types (type_id, type) FROM stdin;
1	sedan
2	coupe
3	suv
4	hatch-back
5	minivan
\.


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 214
-- Name: manufacturers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturers_id_seq', 5, true);


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 220
-- Name: manufacturers_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturers_models_id_seq', 5, true);


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 216
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.models_id_seq', 6, true);


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 218
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 5, true);


--
-- TOC entry 3205 (class 2606 OID 16544)
-- Name: manufacturers_models manufacturers_models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers_models
    ADD CONSTRAINT manufacturers_models_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 16517)
-- Name: manufacturers manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 16526)
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 16534)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (type_id);


-- Completed on 2022-11-11 00:31:01

--
-- PostgreSQL database dump complete
--

