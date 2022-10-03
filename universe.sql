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

DROP DATABASE universe;

--

-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp

--

CREATE DATABASE universe
WITH
    TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';

ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe SET statement_timeout = 0;

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

-- Name: brazilian_meteorites; Type: TABLE; Schema: public; Owner: freecodecamp

--

CREATE TABLE
    public.brazilian_meteorites (
        brazilian_meteorites_id integer NOT NULL,
        name character varying NOT NULL,
        year_discovered integer
    );

ALTER TABLE public.brazilian_meteorites OWNER TO freecodecamp;

--

-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp

--

CREATE TABLE
    public.galaxy (
        galaxy_id integer NOT NULL,
        age_in_millions_of_years integer,
        planet_types integer,
        size_in_light_year numeric(12, 5),
        description character varying,
        is_spiral boolean NOT NULL,
        curiosities text,
        name character varying
    );

ALTER TABLE public.galaxy OWNER TO freecodecamp;

--

-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.galaxy_galaxy_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--

-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;

--

-- Name: meteorites_meteorites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.meteorites_meteorites_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE
    public.meteorites_meteorites_id_seq OWNER TO freecodecamp;

--

-- Name: meteorites_meteorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.meteorites_meteorites_id_seq OWNED BY public.brazilian_meteorites.brazilian_meteorites_id;

--

-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp

--

CREATE TABLE
    public.moon (
        moon_id integer NOT NULL,
        age_in_millions_of_years integer,
        number_of_sisters integer,
        diameter_in_km numeric(12, 4),
        description character varying,
        is_regular boolean,
        planet_id integer NOT NULL,
        curiosities text,
        name character varying
    );

ALTER TABLE public.moon OWNER TO freecodecamp;

--

-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.moon_moon_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--

-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;

--

-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.moon_planet_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--

-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;

--

-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp

--

CREATE TABLE
    public.planet (
        planet_id integer NOT NULL,
        age_in_millions_of_years integer,
        number_of_moons integer,
        diameter_in_km numeric(12, 4),
        description character varying,
        has_life boolean,
        star_id integer NOT NULL,
        curiosities text,
        name character varying
    );

ALTER TABLE public.planet OWNER TO freecodecamp;

--

-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.planet_planet_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--

-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;

--

-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.planet_star_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--

-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;

--

-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp

--

CREATE TABLE
    public.star (
        star_id integer NOT NULL,
        age_in_millions_of_years integer,
        number_of_planets_orbiting integer,
        diameter_in_km numeric(13, 5),
        description character varying,
        bigger_than_the_sun boolean,
        galaxy_id integer NOT NULL,
        curiosities text,
        name character varying
    );

ALTER TABLE public.star OWNER TO freecodecamp;

--

-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.star_galaxy_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--

-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;

--

-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp

--

CREATE SEQUENCE public.star_star_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--

-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp

--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

--

-- Name: brazilian_meteorites brazilian_meteorites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE
    ONLY public.brazilian_meteorites
ALTER COLUMN
    brazilian_meteorites_id
SET
    DEFAULT nextval(
        'public.meteorites_meteorites_id_seq':: regclass
    );

--

-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.galaxy
ALTER COLUMN galaxy_id
SET
    DEFAULT nextval(
        'public.galaxy_galaxy_id_seq':: regclass
    );

--

-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.moon
ALTER COLUMN moon_id
SET
    DEFAULT nextval(
        'public.moon_moon_id_seq':: regclass
    );

--

-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.moon
ALTER COLUMN planet_id
SET
    DEFAULT nextval(
        'public.moon_planet_id_seq':: regclass
    );

--

-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.planet
ALTER COLUMN planet_id
SET
    DEFAULT nextval(
        'public.planet_planet_id_seq':: regclass
    );

--

-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.planet
ALTER COLUMN star_id
SET
    DEFAULT nextval(
        'public.planet_star_id_seq':: regclass
    );

--

-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.star
ALTER COLUMN star_id
SET
    DEFAULT nextval(
        'public.star_star_id_seq':: regclass
    );

--

-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.star
ALTER COLUMN galaxy_id
SET
    DEFAULT nextval(
        'public.star_galaxy_id_seq':: regclass
    );

--

-- Data for Name: brazilian_meteorites; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

INSERT INTO public.brazilian_meteorites VALUES (1, 'Bendegó', 1784);

INSERT INTO
    public.brazilian_meteorites
VALUES (2, 'Itapicuru-Mirim', 1879);

INSERT INTO public.brazilian_meteorites VALUES (3, 'Tiros', 2020);

--

-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

INSERT INTO public.galaxy
VALUES (
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        false,
        NULL,
        'andromeda galaxy'
    );

INSERT INTO public.galaxy
VALUES (
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        false,
        NULL,
        'small magellanic cloud'
    );

INSERT INTO public.galaxy
VALUES (
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        true,
        NULL,
        'milk away'
    );

INSERT INTO public.galaxy
VALUES (
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        true,
        NULL,
        'Triangle galaxy'
    );

INSERT INTO public.galaxy
VALUES (
        7,
        NULL,
        NULL,
        NULL,
        NULL,
        true,
        NULL,
        'black eye galaxy'
    );

INSERT INTO public.galaxy
VALUES (
        8,
        NULL,
        NULL,
        NULL,
        NULL,
        true,
        NULL,
        'Goat galaxy'
    );

--

-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

INSERT INTO public.moon
VALUES (
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'moon'
    );

INSERT INTO public.moon
VALUES (
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'Ganimedes'
    );

INSERT INTO public.moon
VALUES (
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'Calisto'
    );

INSERT INTO public.moon
VALUES (
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'Europa'
    );

INSERT INTO public.moon
VALUES (
        5,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'lo'
    );

INSERT INTO public.moon
VALUES (
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'Temisto'
    );

INSERT INTO public.moon
VALUES (
        7,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        'Carpo'
    );

INSERT INTO public.moon
VALUES (
        8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Titã'
    );

INSERT INTO public.moon
VALUES (
        9,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Tétis'
    );

INSERT INTO public.moon
VALUES (
        10,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Dione'
    );

INSERT INTO public.moon
VALUES (
        11,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Rhea'
    );

INSERT INTO public.moon
VALUES (
        12,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Lapetus'
    );

INSERT INTO public.moon
VALUES (
        13,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Mimas'
    );

INSERT INTO public.moon
VALUES (
        14,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Encelado'
    );

INSERT INTO public.moon
VALUES (
        15,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Pã'
    );

INSERT INTO public.moon
VALUES (
        16,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Dafne'
    );

INSERT INTO public.moon
VALUES (
        17,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Atlas'
    );

INSERT INTO public.moon
VALUES (
        18,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Prometeu'
    );

INSERT INTO public.moon
VALUES (
        19,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Pandora'
    );

INSERT INTO public.moon
VALUES (
        20,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Epimeteu'
    );

INSERT INTO public.moon
VALUES (
        21,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Jano'
    );

INSERT INTO public.moon
VALUES (
        23,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Helene'
    );

INSERT INTO public.moon
VALUES (
        24,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Reia'
    );

--

-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

INSERT INTO public.planet
VALUES (
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'earth'
    );

INSERT INTO public.planet
VALUES (
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Saturn'
    );

INSERT INTO public.planet
VALUES (
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Jupiter'
    );

INSERT INTO public.planet
VALUES (
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Mars'
    );

INSERT INTO public.planet
VALUES (
        5,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Uranus'
    );

INSERT INTO public.planet
VALUES (
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Mercurio'
    );

INSERT INTO public.planet
VALUES (
        7,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Venus'
    );

INSERT INTO public.planet
VALUES (
        8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Neptune'
    );

INSERT INTO public.planet
VALUES (
        9,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        7,
        NULL,
        'Saffar'
    );

INSERT INTO public.planet
VALUES (
        10,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        8,
        NULL,
        'WASP-1b'
    );

INSERT INTO public.planet
VALUES (
        11,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        9,
        NULL,
        'OGLE-2005-BLG-390Lb'
    );

INSERT INTO public.planet
VALUES (
        12,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        NULL,
        'GJ 273 b'
    );

--

-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

INSERT INTO public.star
VALUES (
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'sun'
    );

INSERT INTO public.star
VALUES (
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Alpheratz'
    );

INSERT INTO public.star
VALUES (
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'VY Cma'
    );

INSERT INTO public.star
VALUES (
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'Antares'
    );

INSERT INTO public.star
VALUES (
        5,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Mirach'
    );

INSERT INTO public.star
VALUES (
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Almach'
    );

INSERT INTO public.star
VALUES (
        7,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'Upsilon Andromedae'
    );

INSERT INTO public.star
VALUES (
        8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        'WASP-1'
    );

INSERT INTO public.star
VALUES (
        9,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'OGLE-2005-BLG-390L'
    );

INSERT INTO public.star
VALUES (
        10,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        'GJ 273'
    );

--

-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);

--

-- Name: meteorites_meteorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT
    pg_catalog.setval(
        'public.meteorites_meteorites_id_seq',
        3,
        true
    );

--

-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);

--

-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);

--

-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);

--

-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);

--

-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);

--

-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp

--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);

--

-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.galaxy
ADD
    CONSTRAINT galaxy_name_key UNIQUE (name);

--

-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.galaxy
ADD
    CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--

-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.moon
ADD
    CONSTRAINT moon_name_key UNIQUE (name);

--

-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.moon
ADD
    CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--

-- Name: brazilian_meteorites name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE
    ONLY public.brazilian_meteorites
ADD
    CONSTRAINT name_key UNIQUE (name);

--

-- Name: brazilian_meteorites p_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE
    ONLY public.brazilian_meteorites
ADD
    CONSTRAINT p_key PRIMARY KEY (brazilian_meteorites_id);

--

-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.planet
ADD
    CONSTRAINT planet_name_key UNIQUE (name);

--

-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.planet
ADD
    CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--

-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.star
ADD
    CONSTRAINT star_name_key UNIQUE (name);

--

-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.star
ADD
    CONSTRAINT star_pkey PRIMARY KEY (star_id);

--

-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.moon
ADD
    CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--

-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.planet
ADD
    CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);

--

-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

ALTER TABLE ONLY public.star
ADD
    CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--

-- PostgreSQL database dump complete

--