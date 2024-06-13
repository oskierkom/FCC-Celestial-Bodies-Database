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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    mass integer,
    description text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(10,1),
    description text,
    galaxy_types character varying(20)
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
    distance_from_earth numeric(10,1),
    description text,
    is_spherical boolean,
    planet_id integer
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
    distance_from_earth numeric(10,1),
    description text,
    planet_types character varying(20),
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
    distance_from_earth numeric(10,1),
    description text,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'NGC 166', NULL, NULL, 'Its total mass is 30 billion solar masses');
INSERT INTO public.blackhole VALUES (2, 'TON 618', NULL, NULL, 'Its total mass is more than 60 billion suns');
INSERT INTO public.blackhole VALUES (3, 'NGC 4889', NULL, NULL, 'Its diameter is more than 11 times the diameter of Neptune s orbit');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 'The galaxy we live in', 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 'Our neighboring galaxy', 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', NULL, 'Another galaxy', 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', NULL, 'Another galaxy', 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, 'Another galaxy', 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', NULL, 'Another galaxy', 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 'Our satellite', NULL, 1);
INSERT INTO public.moon VALUES (2, 'Io', NULL, 'One of the 95 Jupyter moons', NULL, 5);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, 'Another Jupyter moon', NULL, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, 'Another Jupyter moon', NULL, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, 'Another Jupyter moon', NULL, 5);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, 'A saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (7, 'Mimas', NULL, 'Another Saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (8, 'Tetis', NULL, 'Another Saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (9, 'Telesto', NULL, 'Another Saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (10, 'Febe', NULL, 'Another Saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, 'Another Saturn moon', NULL, 6);
INSERT INTO public.moon VALUES (12, 'Phobos', NULL, 'One of the Mars moons', NULL, 4);
INSERT INTO public.moon VALUES (13, 'Deimos', NULL, 'The other Mars moon', NULL, 4);
INSERT INTO public.moon VALUES (14, 'Titania', NULL, 'A Uranus moon', NULL, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, 'Another Uranus moon', NULL, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', NULL, 'Another Uranus moon', NULL, 7);
INSERT INTO public.moon VALUES (17, 'Puck', NULL, 'Another Uranus moon', NULL, 7);
INSERT INTO public.moon VALUES (18, 'Perdita', NULL, 'Another Uranus moon', NULL, 7);
INSERT INTO public.moon VALUES (19, 'Triton', NULL, 'A Neptune moon', NULL, 8);
INSERT INTO public.moon VALUES (20, 'Proteo', NULL, 'Another Neptune moon', NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, 'Our planet', NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, 'The closest planet to the Sun', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, 'Also known as our twin planet', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 'Some people are obsessed with finding life in here', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupyter', NULL, 'The biggest planet in the solar system', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 'It has rings', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 'It also has rings', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 'Diamonds rain', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 'Dwarf planet', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Vulcano', NULL, 'Not a planet, but for many years some people believed it existed', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Ihaafor', NULL, 'A planet in Joba s system in Andromeda', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Teroshe', NULL, 'Another planet in Andromeda', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (13, 'Havarl', NULL, 'Another planet in Andromeda, this one in Faroang system', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (14, 'Yilfaen', NULL, 'Another planet from Faroang system. It has graphite', NULL, false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 'Our planet s star', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', NULL, 'A red supergiant star in the Orion constellation', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', NULL, 'The closest star system to our solar system', 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', NULL, 'The brighest star in Andromeda', 2);
INSERT INTO public.star VALUES (5, 'Sirius', NULL, 'The brighest star in Earth s night sky', 1);
INSERT INTO public.star VALUES (6, 'Arcturus', NULL, 'A red giant star, the brighest one in the Bootes constellation', 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: blackhole unique_blackhole; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--

