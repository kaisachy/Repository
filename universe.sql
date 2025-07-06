--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Ubuntu 14.18-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.18 (Ubuntu 14.18-1.pgdg22.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: gitpod
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    diameter_km numeric(10,2) NOT NULL,
    is_potentially_hazardous boolean
);


ALTER TABLE public.asteroid OWNER TO gitpod;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: gitpod
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO gitpod;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gitpod
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: gitpod
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions numeric(4,2) NOT NULL,
    diameter_ly integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO gitpod;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: gitpod
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO gitpod;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gitpod
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: gitpod
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    discovery_year integer,
    orbital_period_days numeric(10,2) NOT NULL
);


ALTER TABLE public.moon OWNER TO gitpod;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: gitpod
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO gitpod;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gitpod
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: gitpod
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    has_life boolean NOT NULL,
    orbital_period_days numeric(10,2) NOT NULL
);


ALTER TABLE public.planet OWNER TO gitpod;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: gitpod
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO gitpod;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gitpod
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: gitpod
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_kelvin integer NOT NULL
);


ALTER TABLE public.star OWNER TO gitpod;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: gitpod
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO gitpod;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gitpod
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: gitpod
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 1, 939.40, false);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 1, 525.40, false);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 1, 512.00, false);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 1, 434.00, false);
INSERT INTO public.asteroid VALUES (5, 'Apophis', 1, 0.37, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: gitpod
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.61, 105700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.01, 110000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 5.00, 60000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 12.93, 240000);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 12.89, 60000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 8.92, 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: gitpod
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 1610, 27.30);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 1877, 0.30);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 1877, 1.30);
INSERT INTO public.moon VALUES (4, 'Io', 4, 1610, 1.80);
INSERT INTO public.moon VALUES (5, 'Europa', 4, 1610, 3.60);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, 1610, 7.20);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, 1610, 16.70);
INSERT INTO public.moon VALUES (8, 'Titan', 5, 1655, 16.00);
INSERT INTO public.moon VALUES (9, 'Rhea', 5, 1672, 4.50);
INSERT INTO public.moon VALUES (10, 'Iapetus', 5, 1671, 79.30);
INSERT INTO public.moon VALUES (11, 'Enceladus', 5, 1789, 1.40);
INSERT INTO public.moon VALUES (12, 'Mimas', 5, 1789, 0.90);
INSERT INTO public.moon VALUES (13, 'Tethys', 5, 1684, 1.90);
INSERT INTO public.moon VALUES (14, 'Dione', 5, 1684, 2.70);
INSERT INTO public.moon VALUES (15, 'Hyperion', 5, 1848, 21.30);
INSERT INTO public.moon VALUES (16, 'Triton', 7, 1846, 5.90);
INSERT INTO public.moon VALUES (17, 'Proteus', 7, 1989, 1.10);
INSERT INTO public.moon VALUES (18, 'Nereid', 7, 1949, 360.10);
INSERT INTO public.moon VALUES (19, 'Charon', 8, 1978, 6.40);
INSERT INTO public.moon VALUES (20, 'Hydra', 8, 2005, 38.20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: gitpod
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 365.25);
INSERT INTO public.planet VALUES (2, 'Mars', 1, true, false, 687.00);
INSERT INTO public.planet VALUES (3, 'Venus', 1, true, false, 225.00);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, true, false, 4333.00);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, true, false, 10759.00);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, true, false, 60190.00);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, false, 30687.00);
INSERT INTO public.planet VALUES (8, 'Mercury', 1, false, false, 88.00);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 2, true, true, 290.00);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 6, true, false, 11.20);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 3, true, true, 6.10);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 4, true, false, 3.50);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: gitpod
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5778);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 5790);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 3500);
INSERT INTO public.star VALUES (4, 'Vega', 1, 9602);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 9940);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 3042);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gitpod
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gitpod
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gitpod
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gitpod
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gitpod
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gitpod
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

