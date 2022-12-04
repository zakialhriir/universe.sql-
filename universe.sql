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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance numeric,
    spher boolean,
    type text,
    discoveredin integer
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
-- Name: known_astro; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.known_astro (
    known_astro_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gal_age integer,
    discovery integer,
    distance numeric,
    bio text NOT NULL,
    spher boolean
);


ALTER TABLE public.known_astro OWNER TO freecodecamp;

--
-- Name: known_astro_astro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.known_astro_astro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.known_astro_astro_id_seq OWNER TO freecodecamp;

--
-- Name: known_astro_astro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.known_astro_astro_id_seq OWNED BY public.known_astro.known_astro_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    discoveredin integer,
    spher boolean NOT NULL,
    type text,
    distance numeric,
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
    age integer,
    discoveredin integer,
    spher boolean NOT NULL,
    type text,
    distance numeric,
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
    age integer,
    discoveredin integer,
    spher boolean NOT NULL,
    type text,
    distance numeric,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: known_astro known_astro_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_astro ALTER COLUMN known_astro_id SET DEFAULT nextval('public.known_astro_astro_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'BlackEye', 13, 24.01, false, 'spiral', 1779);
INSERT INTO public.galaxy VALUES (7, 'Atennea', 300, 65, false, 'colliding', 1785);
INSERT INTO public.galaxy VALUES (8, 'Bode', 13, 11.74, false, 'spiral', 1774);
INSERT INTO public.galaxy VALUES (9, 'Butterfly', 1900, 3800, false, 'unbarred spiral', 1784);
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 200, 489.2, false, 'normal spiral', 1941);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 2.5, false, 'spiral', 1624);


--
-- Data for Name: known_astro; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.known_astro VALUES (1, 'Abd al rahman', 10, 1612, 2.5, 'he discovered andromeda', true);
INSERT INTO public.known_astro VALUES (2, 'Johann Bode', 13, 1774, 11.4, 'he disovered Bode', true);
INSERT INTO public.known_astro VALUES (3, 'Edward pigott', 13, 1779, 17, 'he discovered Black eye', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4, 1609, true, 'scalene ellipsiod', 150, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 1877, true, 'C-type rock', 77.79, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 19, 1877, true, 'C-type', 77.79, NULL);
INSERT INTO public.moon VALUES (4, 'Miranda', 100, 1948, true, 'Round', 2.723, NULL);
INSERT INTO public.moon VALUES (5, 'Triton', 50, 1846, true, 'Dwarf', 4.338, NULL);
INSERT INTO public.moon VALUES (6, 'Titon', 1, 1655, true, 'Icy', 746, NULL);
INSERT INTO public.moon VALUES (7, 'Nix', 4, 2005, false, 'Icy', 5.2766, NULL);
INSERT INTO public.moon VALUES (8, 'Hydra', 4, 2005, false, 'Monstrous Beast', 5.2766, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', 4, 1610, true, 'Icy Rock', 485, NULL);
INSERT INTO public.moon VALUES (10, 'Dione', 4, 1684, true, 'Rocky', 1.272, NULL);
INSERT INTO public.moon VALUES (11, 'Callisto', 4, 1610, true, 'Icy', 628.3, NULL);
INSERT INTO public.moon VALUES (12, 'Tethys', 4, 1684, true, 'Rocky', 1.272, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 4, 1672, true, 'Icy', 1.272, NULL);
INSERT INTO public.moon VALUES (14, 'Io', 4, 1610, true, 'Icy', 628.3, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 100, 1851, true, 'Rocky', 2.8053, NULL);
INSERT INTO public.moon VALUES (16, 'Ganymede', 4, 1610, true, 'Rocky', 778, NULL);
INSERT INTO public.moon VALUES (82, 'Carme', 0, 1938, true, 'Rocky', 676.65, NULL);
INSERT INTO public.moon VALUES (17, 'callirrhoe', 0, 1999, true, 'Rocky', 676.65, NULL);
INSERT INTO public.moon VALUES (19, 'Ersa', 0, 2018, true, 'Rcky', 676.65, NULL);
INSERT INTO public.moon VALUES (84, 'Herse', 0, 2003, true, 'Rocky', 676.65, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4, 0, true, 'Terrestrail', 147.64, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 4, 1610, true, 'Terrestrail', 108.71, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 4, 1631, true, 'Rocky', 68.872, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', 4, 1610, true, 'Rocky', 228.63, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', 4, 1610, true, 'Gas', 740.88, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', 4, 1610, true, 'Gas', 1.4707, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 4, 1846, true, 'Ice', 2.8, NULL);
INSERT INTO public.planet VALUES (9, 'Uranus', 4, 1781, true, 'Ice', 2.9, NULL);
INSERT INTO public.planet VALUES (10, 'Planet9', 4, 2006, true, 'ETNOs', 56, NULL);
INSERT INTO public.planet VALUES (11, 'Pluto', 4, 1930, true, 'Dwarf', 3.7, NULL);
INSERT INTO public.planet VALUES (12, 'Ceres', 4, 1801, true, 'Dwarf', 257, NULL);
INSERT INTO public.planet VALUES (13, 'Eris', 4, 2005, true, 'Dwarf', 6289, NULL);
INSERT INTO public.planet VALUES (14, 'Makemake', 4, 2005, true, 'Dwarf', 4253, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 230, 1862, true, 'spectral', 8.661, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 455, 1850, true, 'AOV', 25.05, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 8, 1781, true, 'B8lab', 864.3, NULL);
INSERT INTO public.star VALUES (4, 'Procyon', 1, 1896, true, 'F5IV-V', 11.45, NULL);
INSERT INTO public.star VALUES (5, 'Achernar', 37, 2003, true, 'B6Vep', 140.2, NULL);
INSERT INTO public.star VALUES (6, 'Arcturus', 7, 1635, true, 'K15IIIFE-0.5', 36.66, NULL);
INSERT INTO public.star VALUES (7, 'Sun', 4, 450, true, 'G2V', 147.64, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: known_astro_astro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.known_astro_astro_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 84, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: known_astro known_astro_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_astro
    ADD CONSTRAINT known_astro_name_key UNIQUE (name);


--
-- Name: known_astro known_astro_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_astro
    ADD CONSTRAINT known_astro_pkey PRIMARY KEY (known_astro_id);


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

