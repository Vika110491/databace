--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-09 16:34:23

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
-- TOC entry 217 (class 1259 OID 16415)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    name_of_actors character varying(50),
    date_of_birth character varying(50),
    country_of_birth character varying(50),
    films character varying(150)
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16414)
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 216
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- TOC entry 215 (class 1259 OID 16410)
-- Name: list_of_films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_of_films (
    id integer NOT NULL,
    name_of_films character varying(50),
    release_date character varying(50),
    country character varying(50),
    genre character varying(50)
);


ALTER TABLE public.list_of_films OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16409)
-- Name: list_of_films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.list_of_films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.list_of_films_id_seq OWNER TO postgres;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 214
-- Name: list_of_films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.list_of_films_id_seq OWNED BY public.list_of_films.id;


--
-- TOC entry 219 (class 1259 OID 16420)
-- Name: producers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producers (
    id integer NOT NULL,
    name character varying(50),
    date_of_birth character varying(50),
    contry_of_birth character varying(50),
    films character varying(150)
);


ALTER TABLE public.producers OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16419)
-- Name: producers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producers_id_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 218
-- Name: producers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producers_id_seq OWNED BY public.producers.id;


--
-- TOC entry 3185 (class 2604 OID 16418)
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 16413)
-- Name: list_of_films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.list_of_films ALTER COLUMN id SET DEFAULT nextval('public.list_of_films_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 16423)
-- Name: producers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producers ALTER COLUMN id SET DEFAULT nextval('public.producers_id_seq'::regclass);


--
-- TOC entry 3332 (class 0 OID 16415)
-- Dependencies: 217
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, name_of_actors, date_of_birth, country_of_birth, films) FROM stdin;
1	Matthew David McConaughey	4.11.1969	Uvalde,  USA	U-571, Fool`s Gold, The Lincoln Lawyer,The Wolf of Wall Street, Interstellar
2	Woody Harrelson	23.07.1961	Midland, USA	Seven Pounds, Zombieland, Seven Psychopaths, True Detective, Solo: A Star Wars Story
3	Benedict Timothy Carlton Cumberbatch	19.07.1976	London, Great Britain	The Other Boleyn Girl, Van Gogh: Painted with Words, Sherlock, Star Trek Into Darkness, The Mauritanian
4	Stypka Ostap	2.09.1967	Lviv, Ukraine	Dress rehearsal, Suicide Night, Happypeople, Taras Bulba, major
5	Til Schweiger	19.12.1963	Freiburg im Breisgau, Germany	Lindenstra?e, Bunte Hunde, Adrenalin, Bandyta, Deuce Bigalow: European Gigolo
6	Shah Rukh Khan	2.11.1965	New Delhi, India	In which Annie gives it those ones, Maya, Dilwale Dulhania Le Jayenge, Zamaana Deewana, Mohabbatein
7	Charles Matthew Hunnam	10.04.1980	Newcastle upon Tyne, Great Britain	Queer as Folk, Green Street, Frankie Go Boom, King Arthur: Legend of the Sword, Shantaram
8	Jessica Michelle Chastain	24.04.1977	Sacramento , USA	Blackbeard, The Tree of Life, Lawless, The Zookeeper`s Wife, The Eyes of Tammy Faye
9	Jared Joseph Leto	26.12.1971	Louisiana, USA	Switchback, Black and White, Requiem for a Dream, Chapter 27, Blade Runner 2049
10	Sandra Annette Bullock	26.07.1964	Arlington, USA	The Preppie Murder, The Vanishing,  Demolition Man, While You Were Sleeping, Gun Shy
\.


--
-- TOC entry 3330 (class 0 OID 16410)
-- Dependencies: 215
-- Data for Name: list_of_films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_of_films (id, name_of_films, release_date, country, genre) FROM stdin;
1	Hancock	2008	USA	action movie, camedy
2	Deadpool	2016	USA	action movie, camedy
3	Schindler`s List	1993	USA	historical drama
4	Taras Bulba	2009	Ukraine, Poland	historical
5	Scream	1996	USA	horor
6	Taxi	1998	France	camedy
7	Ronaldo	2015	Great Britain	documentary
8	The Ninth Gate	1999	USA, Portugal, Srain, France	mystical thriller
9	Resident Evil	2002	Great Britain	sci-fi, horor
10	The Last Airbender	2010	USA	adventure
\.


--
-- TOC entry 3334 (class 0 OID 16420)
-- Dependencies: 219
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producers (id, name, date_of_birth, contry_of_birth, films) FROM stdin;
1	David Keith Lynch	30.01.1946	USA	Eraserhead, Dune, Wild at Heart, Lost Highway, Mulholland Drive
2	Quentin Jerome Tarantino	27.03.1963	USA	Death proof, Django Unchained, Jackie Brown, Kill Bill, Hateful Eight
3	Christopher Jonathan James Nolan	30.07.1970	Great Britain	The Dark Knight Rises, Man of Steel, Interstellar, Dunkirk, Tenet
4	Robert Lee Zemeckis	14.05.1952	USA	Back to the Future, The Public Eye, Forrest Gump, Thirteen Ghosts, A Christmas Carol
5	Clinton «Clint» Eastwood, Jr.	31.05.1930	USA	Million Dollar Baby, American Sniper, Changeling, Hereafter, The Bridges of Madison County
6	Kailasam Balachander	30.07.1930	India	Aval Oru Thodar Kathai, Apoorva Raagangal, Maro Charitra, Varumayin Niram Sivappu, Achamillai Achamillai
7	Leni Riefenstahl	22.08.1902	Germany	Das blaue Licht, Triumph des Willens, Olympia, Der heilige Berg, Sturme uber dem Montblanc
8	Luc Paul Maurice Besson	18.03.1959	France	Le Dernier combat, Nikita, Leon, Taxi, Les Rivieres pourpres II - Les anges de l’apocalypse
9	Alejandro Gonzalez Inarritu	15.08.1963	Mexico	Amores perros, 21 Gramos, Babel, Birdman, Powder Keg
10	Baz Luhrmann	27.09.1962	Australia	Strictly Ballroom, Romeo + Juliet, Moulin Rouge!, The Great Gatsby, Elvis
\.


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 216
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 10, true);


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 214
-- Name: list_of_films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.list_of_films_id_seq', 10, true);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 218
-- Name: producers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producers_id_seq', 10, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE actors; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.actors TO PUBLIC;


--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 216
-- Name: SEQUENCE actors_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.actors_id_seq TO PUBLIC;


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE list_of_films; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.list_of_films TO PUBLIC;


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 214
-- Name: SEQUENCE list_of_films_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.list_of_films_id_seq TO PUBLIC;


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE producers; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.producers TO PUBLIC;


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 218
-- Name: SEQUENCE producers_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.producers_id_seq TO PUBLIC;


--
-- TOC entry 2045 (class 826 OID 16424)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;


-- Completed on 2022-11-09 16:34:23

--
-- PostgreSQL database dump complete
--

