--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_id_fkey;
ALTER TABLE ONLY public.star DROP CONSTRAINT star_ree_key;
ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_name_key;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_name_key;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_name_of_planets_key;
ALTER TABLE ONLY public.breakfast DROP CONSTRAINT breakfast_ree_key;
ALTER TABLE ONLY public.breakfast DROP CONSTRAINT breakfast_pkey;
ALTER TABLE ONLY public.breakfast DROP CONSTRAINT breakfast_name_key;
ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
ALTER TABLE public.breakfast ALTER COLUMN breakfast_id DROP DEFAULT;
DROP SEQUENCE public.star_id_seq;
DROP TABLE public.star;
DROP SEQUENCE public.planet_id_seq;
DROP TABLE public.planet;
DROP SEQUENCE public.moon_id_seq;
DROP TABLE public.moon;
DROP SEQUENCE public.galaxy_id_seq;
DROP TABLE public.galaxy;
DROP SEQUENCE public.breakfast_id_seq;
DROP TABLE public.breakfast;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: breakfast; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.breakfast (
    breakfast_id integer NOT NULL,
    name character varying(30) NOT NULL,
    reee character varying(30),
    ree integer
);


ALTER TABLE public.breakfast OWNER TO freecodecamp;

--
-- Name: breakfast_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.breakfast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.breakfast_id_seq OWNER TO freecodecamp;

--
-- Name: breakfast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.breakfast_id_seq OWNED BY public.breakfast.breakfast_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    number_of_stars numeric,
    still_exists text,
    galaxy_id integer NOT NULL,
    number_of_species integer,
    name_of_planets character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    still_exists boolean,
    moon_id integer NOT NULL,
    some_nonsense boolean,
    ree integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    tastes_good boolean,
    ree2 integer,
    ree integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    tempreature integer NOT NULL,
    ree integer,
    ree2 integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: breakfast breakfast_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.breakfast ALTER COLUMN breakfast_id SET DEFAULT nextval('public.breakfast_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: breakfast; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.breakfast VALUES (5, 'susage and eggs', NULL, NULL);
INSERT INTO public.breakfast VALUES (6, 'fool', NULL, NULL);
INSERT INTO public.breakfast VALUES (7, 'fast', NULL, NULL);
INSERT INTO public.breakfast VALUES (8, 'tuna salad tasty', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 1, NULL, 'pluto', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 2, NULL, 'earth', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 3, NULL, 'ceres', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 4, NULL, 'jupiter', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 5, NULL, 'uranus', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 6, NULL, 'mercury', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 7, NULL, 'venus', NULL);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 8, NULL, 'saturn', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('venus', NULL, 1, true, NULL, NULL);
INSERT INTO public.moon VALUES ('jupiter', NULL, 2, false, NULL, NULL);
INSERT INTO public.moon VALUES ('dota', NULL, 3, false, NULL, NULL);
INSERT INTO public.moon VALUES ('ceres', NULL, 4, true, NULL, NULL);
INSERT INTO public.moon VALUES ('saturn', NULL, 5, false, NULL, NULL);
INSERT INTO public.moon VALUES ('cocoo', NULL, 6, false, NULL, NULL);
INSERT INTO public.moon VALUES ('lalaaa', NULL, 7, true, NULL, NULL);
INSERT INTO public.moon VALUES ('kaboom', NULL, 8, true, NULL, NULL);
INSERT INTO public.moon VALUES ('help', NULL, 9, true, NULL, NULL);
INSERT INTO public.moon VALUES ('reee', NULL, 10, false, NULL, NULL);
INSERT INTO public.moon VALUES ('no_ree', NULL, 11, true, NULL, NULL);
INSERT INTO public.moon VALUES ('vsops', NULL, 12, true, NULL, NULL);
INSERT INTO public.moon VALUES ('lpsa', NULL, 13, false, NULL, NULL);
INSERT INTO public.moon VALUES ('permo', NULL, 14, false, NULL, NULL);
INSERT INTO public.moon VALUES ('kpss', NULL, 15, true, NULL, NULL);
INSERT INTO public.moon VALUES ('sragn', NULL, 16, false, NULL, NULL);
INSERT INTO public.moon VALUES ('roo', NULL, 17, false, NULL, NULL);
INSERT INTO public.moon VALUES ('george', NULL, 18, true, NULL, NULL);
INSERT INTO public.moon VALUES ('kabab', NULL, 19, true, NULL, NULL);
INSERT INTO public.moon VALUES ('vsosps', NULL, 20, true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, true, NULL, NULL);
INSERT INTO public.planet VALUES ('venus', 2, true, NULL, NULL);
INSERT INTO public.planet VALUES ('jupiter', 3, false, NULL, NULL);
INSERT INTO public.planet VALUES ('dota', 4, false, NULL, NULL);
INSERT INTO public.planet VALUES ('ceres', 5, true, NULL, NULL);
INSERT INTO public.planet VALUES ('saturn', 6, false, NULL, NULL);
INSERT INTO public.planet VALUES ('cocoo', 7, false, NULL, NULL);
INSERT INTO public.planet VALUES ('lalaaa', 8, true, NULL, NULL);
INSERT INTO public.planet VALUES ('kaboom', 9, true, NULL, NULL);
INSERT INTO public.planet VALUES ('help', 10, true, NULL, NULL);
INSERT INTO public.planet VALUES ('reee', 11, false, NULL, NULL);
INSERT INTO public.planet VALUES ('no_ree', 12, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 37000, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('big chungs', 2, 69420, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('delta', 3, 30, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('btates', 4, 600, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('dota', 5, 322, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('kaboom', 6, 1, NULL, NULL, NULL);


--
-- Name: breakfast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.breakfast_id_seq', 8, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: breakfast breakfast_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.breakfast
    ADD CONSTRAINT breakfast_name_key UNIQUE (name);


--
-- Name: breakfast breakfast_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.breakfast
    ADD CONSTRAINT breakfast_pkey PRIMARY KEY (breakfast_id);


--
-- Name: breakfast breakfast_ree_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.breakfast
    ADD CONSTRAINT breakfast_ree_key UNIQUE (ree);


--
-- Name: galaxy galaxy_name_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_of_planets_key UNIQUE (name_of_planets);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_ree_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ree_key UNIQUE (ree);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

