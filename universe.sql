--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_age numeric,
    volume integer,
    area integer,
    morphology text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_age numeric,
    volume integer,
    area integer,
    morphology text,
    has_life boolean,
    has_water boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_age numeric,
    volume integer,
    area integer,
    morphology text,
    has_life boolean,
    has_water boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_seq OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_age numeric,
    volume integer,
    area integer,
    morphology text,
    has_life boolean,
    has_water boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via_lactea', 6500300, 34346767, 23510000, 'solid_gas', true, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 23356233, 2344634, 23698344, 'solid_gas', false, true);
INSERT INTO public.galaxy VALUES (3, 'atennea', 23343454, 45344366, 2345678, 'solid_gas', false, false);
INSERT INTO public.galaxy VALUES (4, 'bear_paw', 67886544, 89344677, 2356899, 'solid_gas', false, false);
INSERT INTO public.galaxy VALUES (5, 'backward', 632333899, 23355344, 123566788, 'solid_gas', false, false);
INSERT INTO public.galaxy VALUES (6, 'comet', 45233466, 865433, 12345566, 'solid_gas', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'monn', 6530300, 32346767, 23489, 'solid_gas', true, true, 1);
INSERT INTO public.moon VALUES (2, 'mimas', 24356233, 2444634, 33698344, 'solid_gas', false, true, 1);
INSERT INTO public.moon VALUES (3, 'epimetheus', 24343454, 46344366, 2645679, 'solid_gas', false, false, 4);
INSERT INTO public.moon VALUES (4, 'thebe', 97886544, 239344687, 2656899, 'solid_gas', false, false, 1);
INSERT INTO public.moon VALUES (5, 'ganymede', 672323899, 23356374, 133566788, 'solid_gas', false, false, 1);
INSERT INTO public.moon VALUES (6, 'adrastea', 65233466, 965433, 23345566, 'solid_gas', false, false, 1);
INSERT INTO public.moon VALUES (7, 'albiorix', 45688900, 235677899, 7680098, 'solid_gas', false, false, 2);
INSERT INTO public.moon VALUES (8, 'paaliaq', 2390088, 2388990, 78699065, 'solid_gas', false, false, 3);
INSERT INTO public.moon VALUES (9, 'erriapus', 396412, 1298645, 12990523, 'solid_gas', false, false, 5);
INSERT INTO public.moon VALUES (10, 'cyllene', 237895, 12903566, 5126, 'solid_gas', false, false, 3);
INSERT INTO public.moon VALUES (11, 'eukelade', 12356, 60234, 43128344, 'solid_gas', false, false, 2);
INSERT INTO public.moon VALUES (12, 'loge', 459123, 23932, 1295533, 'solid_gas', false, false, 1);
INSERT INTO public.moon VALUES (13, 'arche', 1239554, 2308665, 9023385, 'solid', false, false, 3);
INSERT INTO public.moon VALUES (14, 'farbuati', 128995, 23955, 392335, 'solid', false, false, 3);
INSERT INTO public.moon VALUES (15, 'skacti', 823900, 230933, 902833, 'solid_gas', false, false, 3);
INSERT INTO public.moon VALUES (16, 'bestia', 12955, 285338, 38945, 'solid', false, false, 6);
INSERT INTO public.moon VALUES (17, 'enceladus', 12890034, 2853998, 1082447, 'solid_gas', false, false, 4);
INSERT INTO public.moon VALUES (18, 'lapetus', 180223, 129034, 2834990, 'solid_gas', false, false, 3);
INSERT INTO public.moon VALUES (19, 'tethys', 2955, 192399, 2093884, 'solid_gas', false, false, 2);
INSERT INTO public.moon VALUES (20, 'io', 1208, 2854, 192038, 'solid_gas', false, false, 3);
INSERT INTO public.moon VALUES (21, 'himalia', 1054, 130855, 19652, 'solid_gas', false, false, 1);
INSERT INTO public.moon VALUES (22, 'callisto', 129023, 189933, 1092375, 'solid_gas', false, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 510000000, 32346767, 23489, 'solid_gas', true, true, 4);
INSERT INTO public.planet VALUES (2, 'pa_99_n2', 24356233, 2444634, 33698344, 'solid_gas', false, true, 1);
INSERT INTO public.planet VALUES (3, 'mercury', 24343454, 46344366, 2645679, 'solid_gas', false, false, 4);
INSERT INTO public.planet VALUES (4, 'venus', 97886544, 239344687, 2656899, 'solid_gas', false, false, 1);
INSERT INTO public.planet VALUES (5, 'mars', 672323899, 23356374, 133566788, 'solid_gas', false, false, 1);
INSERT INTO public.planet VALUES (6, 'jupiter', 65233466, 965433, 23345566, 'solid_gas', false, false, 1);
INSERT INTO public.planet VALUES (7, 'saturn', 45688900, 235677899, 7680098, 'solid_gas', false, false, 2);
INSERT INTO public.planet VALUES (8, 'uranus', 2390088, 2388990, 78699065, 'solid_gas', false, false, 3);
INSERT INTO public.planet VALUES (9, 'neptune', 396412, 1298645, 12990523, 'solid_gas', false, false, 5);
INSERT INTO public.planet VALUES (10, 'gorot_7b', 237895, 12903566, 51268533, 'solid_gas', false, false, 3);
INSERT INTO public.planet VALUES (11, 'hd20958b', 12356, 60234, 43128344, 'solid_gas', false, false, 2);
INSERT INTO public.planet VALUES (12, 'kepler186f', 459123, 23932, 1295533, 'solid_gas', false, false, 1);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'sys_solar_1', 1, 4);
INSERT INTO public.solar_system VALUES (2, 'sys_solar_2', 3, 4);
INSERT INTO public.solar_system VALUES (3, 'sys_solar_3', 2, 1);
INSERT INTO public.solar_system VALUES (4, 'sys_solar_4', 5, 1);
INSERT INTO public.solar_system VALUES (5, 'sys_solar_5', 6, 1);
INSERT INTO public.solar_system VALUES (6, 'sys_solar_6', 9, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lynx', 6530300, 32346767, 23489, 'solid_gas', true, true, 6);
INSERT INTO public.star VALUES (2, 'crux', 24356233, 2444634, 33698344, 'solid_gas', false, true, 5);
INSERT INTO public.star VALUES (3, 'eridanus', 24343454, 46344366, 2645679, 'solid_gas', false, false, 4);
INSERT INTO public.star VALUES (4, 'cassiopea', 97886544, 239344687, 2656899, 'solid_gas', false, false, 1);
INSERT INTO public.star VALUES (5, 'scorplus', 672323899, 23356374, 133566788, 'solid_gas', false, false, 1);
INSERT INTO public.star VALUES (6, 'serpend', 65233466, 965433, 23345566, 'solid_gas', false, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_seq', 1, false);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

