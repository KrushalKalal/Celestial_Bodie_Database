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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    age numeric,
    spherical_area integer,
    spherical_volume integer
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    age numeric,
    spherical_area integer,
    spherical_volume integer
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
-- Name: more_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_details (
    more_details_id integer NOT NULL,
    value integer,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_details OWNER TO freecodecamp;

--
-- Name: more_details_more_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_details_more_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_details_more_detail_id_seq OWNER TO freecodecamp;

--
-- Name: more_details_more_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_details_more_detail_id_seq OWNED BY public.more_details.more_details_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    age numeric,
    spherical_area integer,
    spherical_volume integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_palnet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_palnet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_palnet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_palnet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_palnet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    age numeric,
    spherical_area integer,
    spherical_volume integer
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
-- Name: more_details more_details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_details ALTER COLUMN more_details_id SET DEFAULT nextval('public.more_details_more_detail_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_palnet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'galaxy1', 'solid', true, false, 200.32, 100, 50);
INSERT INTO public.galaxy VALUES (2, 2, 'galaxy2', 'solid', true, true, 200.32, 100, 50);
INSERT INTO public.galaxy VALUES (3, 3, 'galaxy3', 'solid', true, true, 200.32, 100, 50);
INSERT INTO public.galaxy VALUES (4, 4, 'galaxy4', 'solid', true, false, 200.32, 100, 50);
INSERT INTO public.galaxy VALUES (5, 5, 'galaxy5', 'solid', true, true, 200.32, 100, 50);
INSERT INTO public.galaxy VALUES (6, 6, 'galaxy6', 'solid', true, false, 200.32, 100, 50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (2, 2, 'moon2', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (3, 3, 'moon3', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (4, 4, 'moon4', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (5, 5, 'moon5', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (6, 6, 'moon6', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (7, 7, 'moon7', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (8, 8, 'moon8', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (9, 9, 'moon9', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (10, 10, 'moon10', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (11, 11, 'moon11', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (12, 12, 'moon12', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (13, 1, 'moon13', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (14, 2, 'moon14', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (15, 3, 'moon15', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (16, 4, 'moon16', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (17, 5, 'moon17', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (18, 6, 'moon18', 'solid', true, false, 500.25, 450, 250);
INSERT INTO public.moon VALUES (19, 7, 'moon19', 'solid', true, true, 500.25, 450, 250);
INSERT INTO public.moon VALUES (20, 8, 'moon20', 'solid', true, false, 500.25, 450, 250);


--
-- Data for Name: more_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_details VALUES (1, 1, 'details1', 'more_details_text1');
INSERT INTO public.more_details VALUES (2, 2, 'details2', 'more_details_text2');
INSERT INTO public.more_details VALUES (3, 3, 'details3', 'more_details_text3');
INSERT INTO public.more_details VALUES (4, 4, 'details4', 'more_details_text4');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'planet1', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (2, 2, 2, 'planet2', 'solid', true, true, 900.75, 500, 375);
INSERT INTO public.planet VALUES (3, 3, 3, 'planet3', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (4, 4, 4, 'planet4', 'solid', true, true, 900.75, 500, 375);
INSERT INTO public.planet VALUES (5, 5, 5, 'planet5', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (6, 6, 6, 'planet6', 'solid', true, true, 900.75, 500, 375);
INSERT INTO public.planet VALUES (7, 1, 7, 'planet7', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (8, 2, 8, 'planet8', 'solid', true, true, 900.75, 500, 375);
INSERT INTO public.planet VALUES (9, 3, 9, 'planet9', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (10, 4, 10, 'planet10', 'solid', true, true, 900.75, 500, 375);
INSERT INTO public.planet VALUES (11, 5, 11, 'planet11', 'solid', true, false, 900.75, 500, 375);
INSERT INTO public.planet VALUES (12, 6, 12, 'planet12', 'solid', true, true, 900.75, 500, 375);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'star1', 'soild', true, true, 200.32, 100, 200);
INSERT INTO public.star VALUES (2, 2, 2, 'star2', 'soild', true, true, 200.32, 100, 200);
INSERT INTO public.star VALUES (3, 3, 3, 'star3', 'solid', true, false, 200.32, 100, 200);
INSERT INTO public.star VALUES (4, 4, 4, 'star4', 'soild', true, true, 200.32, 100, 200);
INSERT INTO public.star VALUES (5, 5, 5, 'star5', 'solid', true, false, 200.32, 100, 200);
INSERT INTO public.star VALUES (6, 6, 6, 'star6', 'soild', true, true, 200.32, 100, 200);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_details_more_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_details_more_detail_id_seq', 1, false);


--
-- Name: planet_palnet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_palnet_id_seq', 1, false);


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
-- Name: more_details more_details_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_details
    ADD CONSTRAINT more_details_name_key UNIQUE (name);


--
-- Name: more_details more_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_details
    ADD CONSTRAINT more_details_pkey PRIMARY KEY (more_details_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

