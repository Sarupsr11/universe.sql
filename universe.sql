
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
-- Name: alien_civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien_civilization (
    alien_civilization_id integer NOT NULL,
    name character varying(20) NOT NULL,
    population integer,
    technology character varying(20)
);


ALTER TABLE public.alien_civilization OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_type character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter_in_km integer,
    year_discovered integer,
    age_in_millions numeric(10,10),
    moon_type character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    gravity numeric(10,5),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    start_type character varying(20),
    mass_ton numeric(10,5),
    age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: alien_civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien_civilization VALUES (21708, 'alien_1', NULL, NULL);
INSERT INTO public.alien_civilization VALUES (213708, 'alien_2', NULL, NULL);
INSERT INTO public.alien_civilization VALUES (13708, 'alien_3', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, false, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andeomeda', NULL, false, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, false, 'Irregular');
INSERT INTO public.galaxy VALUES (4, 'Sombero', NULL, false, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', NULL, false, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, false, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 100, 1987, 0.2000000000, 'spherical', 5);
INSERT INTO public.moon VALUES (2, 'moon', 10099, 1987, 0.5000000000, 'spherical', 3);
INSERT INTO public.moon VALUES (4, 'moon_3', 10099, 1987, NULL, 'spherical', 5);
INSERT INTO public.moon VALUES (5, 'moon_4', 10099, 1987, NULL, 'spherical', 5);
INSERT INTO public.moon VALUES (6, 'moon_6', 10399, 1987, NULL, 'spherical', 5);
INSERT INTO public.moon VALUES (7, 'moon_7', 10399, 1987, NULL, 'spherical', 5);
INSERT INTO public.moon VALUES (8, 'moon_8', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (9, 'moon_9', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (10, 'moon_10', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (11, 'moon_11', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (12, 'moon_11', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (13, 'moon_13', 10399, 1987, NULL, 'spherical', 6);
INSERT INTO public.moon VALUES (14, 'moon_14', 10399, 1987, NULL, 'spherical', 7);
INSERT INTO public.moon VALUES (15, 'moon_15', 10399, 1987, NULL, 'spherical', 7);
INSERT INTO public.moon VALUES (16, 'moon_16', 10399, 1987, NULL, 'spherical', 7);
INSERT INTO public.moon VALUES (17, 'moon_17', 10399, 1987, NULL, 'spherical', 7);
INSERT INTO public.moon VALUES (18, 'moon_18', 10399, 1987, NULL, 'spherical', 8);
INSERT INTO public.moon VALUES (19, 'moon_19', 10399, 1987, NULL, 'spherical', 8);
INSERT INTO public.moon VALUES (20, 'moon_19', 10399, 1987, NULL, 'spherical', 8);
INSERT INTO public.moon VALUES (3, 'moon_2', 10099, 1987, NULL, 'spherical', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 100.00000, 101);
INSERT INTO public.planet VALUES (2, 'Venus', false, 50.00000, 101);
INSERT INTO public.planet VALUES (3, 'Earth', true, 10.00000, 101);
INSERT INTO public.planet VALUES (4, 'Mars', true, 8.00000, 101);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 9.00000, 101);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 9.00000, 101);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 9.00000, 101);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 9.00000, 101);
INSERT INTO public.planet VALUES (9, 'Kepler-1', NULL, 9.00000, 102);
INSERT INTO public.planet VALUES (10, 'Kepler-2', NULL, 9.00000, 103);
INSERT INTO public.planet VALUES (11, 'Kepler-3', NULL, 9.00000, 104);
INSERT INTO public.planet VALUES (12, 'Kepler-4', NULL, 9.00000, 105);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (101, 'Sun', 'G2V', 10000.00000, 10000000, 1);
INSERT INTO public.star VALUES (102, 'Sun 2', 'G2V', 10001.00000, 10000001, 1);
INSERT INTO public.star VALUES (103, 'Sun 3', 'G2V1', 10101.00000, 100001, 2);
INSERT INTO public.star VALUES (104, 'Sun 4', 'G2V4', 10101.00000, 110001, 3);
INSERT INTO public.star VALUES (105, 'Sun 5', 'G2V5', 11101.00000, 110001, 4);
INSERT INTO public.star VALUES (106, 'Sun 6', 'G2V6', 11111.00000, 111001, 4);


--
-- Name: alien_civilization alien_civilization_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_civilization
    ADD CONSTRAINT alien_civilization_id UNIQUE (alien_civilization_id);


--
-- Name: alien_civilization alien_civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_civilization
    ADD CONSTRAINT alien_civilization_pkey PRIMARY KEY (alien_civilization_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_fk_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_fk_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

