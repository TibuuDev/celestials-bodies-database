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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_visible_from_earth boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_years integer,
    distance_from_earth integer,
    has_life boolean,
    galaxy character varying(30)
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
    diameter_in_km integer,
    is_spherical boolean,
    planet character varying(30)
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
    surface_in_million_km2 numeric(7,1),
    age_in_millions_years integer,
    has_life boolean,
    star character varying(30),
    planet character varying(30)
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric(7,1),
    luminosity numeric(7,1),
    description text,
    galaxy character varying(30),
    star character varying(30)
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys', true);
INSERT INTO public.comet VALUES (2, 'Hyakutake', true);
INSERT INTO public.comet VALUES (3, 'Shoemaker-levy 9', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13500, 2500000, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 13000, 23000000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 13000, 29300000, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 13500, 2700000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13000, 11000000, false, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, NULL, true, 'Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, true, 'Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 22, false, 'Mars');
INSERT INTO public.moon VALUES (3, 'Titan', 5150, true, 'Saturn');
INSERT INTO public.moon VALUES (4, 'Enceladus', 504, true, 'Saturn');
INSERT INTO public.moon VALUES (5, 'Rhea', 1527, true, 'Saturn');
INSERT INTO public.moon VALUES (6, 'Europa', 3122, true, 'Jupiter');
INSERT INTO public.moon VALUES (7, 'Io', 3643, true, 'Jupiter');
INSERT INTO public.moon VALUES (8, 'Ganymede', 5268, true, 'Jupiter');
INSERT INTO public.moon VALUES (9, 'Deimos', 12, false, 'Mars');
INSERT INTO public.moon VALUES (10, 'Hyperion', 270, false, 'Saturn');
INSERT INTO public.moon VALUES (11, 'Dione', 1123, true, 'Saturn');
INSERT INTO public.moon VALUES (12, 'Tethys', 1062, true, 'Saturn');
INSERT INTO public.moon VALUES (13, 'Iapetus', 1470, false, 'Saturn');
INSERT INTO public.moon VALUES (14, 'Callisto', 4821, true, 'Jupiter');
INSERT INTO public.moon VALUES (15, 'Miranda', 472, false, 'Uranus');
INSERT INTO public.moon VALUES (16, 'Ariel', 1158, true, 'Uranus');
INSERT INTO public.moon VALUES (17, 'Umbriel', 1169, false, 'Uranus');
INSERT INTO public.moon VALUES (18, 'Titania', 1578, true, 'Uranus');
INSERT INTO public.moon VALUES (19, 'Oberon', 1523, false, 'Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 2707, true, 'Neptune');
INSERT INTO public.moon VALUES (21, 'Proteus', 416, false, 'Neptune');
INSERT INTO public.moon VALUES (22, 'Nereid', 240, false, 'Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (6, 'Mercury', 74.8, 4503, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (7, 'Venus', 460.2, 4503, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 17.6, 4503, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (14, 'Kepler-452b', 1.3, 4600, false, 'Kepler-452', NULL);
INSERT INTO public.planet VALUES (15, 'Proxima Centauri b', 616.0, 5700, false, 'Proxima Centauri', NULL);
INSERT INTO public.planet VALUES (16, 'Trappist-1e', 462.0, 8500, false, 'Trappist-1', NULL);
INSERT INTO public.planet VALUES (17, '51 Pegasi b', NULL, 4600, false, '51 Pegasi', NULL);
INSERT INTO public.planet VALUES (1, 'Earth', 510.0, 4543, true, 'Sun', 'Earth');
INSERT INTO public.planet VALUES (2, 'Mars', 144.8, 4503, false, 'Sun', 'Mars');
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, 4503, false, 'Sun', 'Saturn');
INSERT INTO public.planet VALUES (4, 'Neptune', 7618.0, 4503, false, 'Sun', 'Neptune');
INSERT INTO public.planet VALUES (8, 'Uranus', 8115.0, 4503, false, 'Sun', 'Uranus');
INSERT INTO public.planet VALUES (3, 'Jupiter', 61420.0, 4504, false, 'Sun', 'Jupiter');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 2.0, 25.0, 'Brightest star in the night sky', 'Milky Way', NULL);
INSERT INTO public.star VALUES (3, 'Polaris', 6.0, 2500.0, 'North Star, a Cepheid variable star', 'Milky Way', NULL);
INSERT INTO public.star VALUES (4, 'Aldebaran', 1.7, 425.0, 'A red giant, the brightest star in the constellation Taurus', 'Milky Way', NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 20.0, 100000.0, 'A red supergiant, one of the largest known stars', 'Milky Way', NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 18.0, 80000.0, 'A blue supergiant, one of the brightest stars in the night sky', 'Milky Way', NULL);
INSERT INTO public.star VALUES (1, 'Sun', 1.0, 1.0, 'Provides light and heat for Earth, supports life', 'Milky Way', 'Sun');
INSERT INTO public.star VALUES (8, 'Kepler-452', 1.0, 1.2, 'A star very similar to our Sun in terms of mass and luminosity', 'Milky Way', 'Kepler-452');
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 0.1, 0.1, 'Closest star to the Sun, part of a triple star system', 'Milky Way', 'Proxima Centauri');
INSERT INTO public.star VALUES (9, 'Trappist-1', 0.1, 0.1, 'An ultra cold dwarf, much smaller and cooler than our sun', 'Milky Way', 'Trappist-1');
INSERT INTO public.star VALUES (10, '51 Pegasi', 1.1, 1.1, 'A main-sequence star slightly larger and more luminous than our sun', 'Milky Way', '51 Pegasi');


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_key UNIQUE (galaxy);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: planet planet_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_key UNIQUE (planet);


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
-- Name: star star_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_key UNIQUE (star);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star) REFERENCES public.star(star);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.galaxy(galaxy);


--
-- PostgreSQL database dump complete
--

