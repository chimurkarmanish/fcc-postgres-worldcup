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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 2, 9, 2018, 'Final', 23, 24);
INSERT INTO public.games VALUES (2, 0, 10, 2018, 'Third Place', 25, 26);
INSERT INTO public.games VALUES (2, 1, 11, 2018, 'Semi-Final', 24, 26);
INSERT INTO public.games VALUES (1, 0, 12, 2018, 'Semi-Final', 23, 25);
INSERT INTO public.games VALUES (3, 2, 13, 2018, 'Quarter-Final', 24, 27);
INSERT INTO public.games VALUES (2, 0, 14, 2018, 'Quarter-Final', 26, 28);
INSERT INTO public.games VALUES (2, 1, 15, 2018, 'Quarter-Final', 25, 29);
INSERT INTO public.games VALUES (2, 0, 16, 2018, 'Quarter-Final', 23, 30);
INSERT INTO public.games VALUES (2, 1, 17, 2018, 'Eighth-Final', 26, 31);
INSERT INTO public.games VALUES (1, 0, 18, 2018, 'Eighth-Final', 28, 32);
INSERT INTO public.games VALUES (3, 2, 19, 2018, 'Eighth-Final', 25, 33);
INSERT INTO public.games VALUES (2, 0, 20, 2018, 'Eighth-Final', 29, 34);
INSERT INTO public.games VALUES (2, 1, 21, 2018, 'Eighth-Final', 24, 35);
INSERT INTO public.games VALUES (2, 1, 22, 2018, 'Eighth-Final', 27, 36);
INSERT INTO public.games VALUES (2, 1, 23, 2018, 'Eighth-Final', 30, 37);
INSERT INTO public.games VALUES (4, 3, 24, 2018, 'Eighth-Final', 23, 38);
INSERT INTO public.games VALUES (1, 0, 25, 2014, 'Final', 39, 38);
INSERT INTO public.games VALUES (3, 0, 26, 2014, 'Third Place', 40, 29);
INSERT INTO public.games VALUES (1, 0, 27, 2014, 'Semi-Final', 38, 40);
INSERT INTO public.games VALUES (7, 1, 28, 2014, 'Semi-Final', 39, 29);
INSERT INTO public.games VALUES (1, 0, 29, 2014, 'Quarter-Final', 40, 41);
INSERT INTO public.games VALUES (1, 0, 30, 2014, 'Quarter-Final', 38, 25);
INSERT INTO public.games VALUES (2, 1, 31, 2014, 'Quarter-Final', 29, 31);
INSERT INTO public.games VALUES (1, 0, 32, 2014, 'Quarter-Final', 39, 23);
INSERT INTO public.games VALUES (2, 1, 33, 2014, 'Eighth-Final', 29, 42);
INSERT INTO public.games VALUES (2, 0, 34, 2014, 'Eighth-Final', 31, 30);
INSERT INTO public.games VALUES (2, 0, 35, 2014, 'Eighth-Final', 23, 43);
INSERT INTO public.games VALUES (2, 1, 36, 2014, 'Eighth-Final', 39, 44);
INSERT INTO public.games VALUES (2, 1, 37, 2014, 'Eighth-Final', 40, 34);
INSERT INTO public.games VALUES (2, 1, 38, 2014, 'Eighth-Final', 41, 45);
INSERT INTO public.games VALUES (1, 0, 39, 2014, 'Eighth-Final', 38, 32);
INSERT INTO public.games VALUES (2, 1, 40, 2014, 'Eighth-Final', 25, 46);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (23, 'France');
INSERT INTO public.teams VALUES (24, 'Croatia');
INSERT INTO public.teams VALUES (25, 'Belgium');
INSERT INTO public.teams VALUES (26, 'England');
INSERT INTO public.teams VALUES (27, 'Russia');
INSERT INTO public.teams VALUES (28, 'Sweden');
INSERT INTO public.teams VALUES (29, 'Brazil');
INSERT INTO public.teams VALUES (30, 'Uruguay');
INSERT INTO public.teams VALUES (31, 'Colombia');
INSERT INTO public.teams VALUES (32, 'Switzerland');
INSERT INTO public.teams VALUES (33, 'Japan');
INSERT INTO public.teams VALUES (34, 'Mexico');
INSERT INTO public.teams VALUES (35, 'Denmark');
INSERT INTO public.teams VALUES (36, 'Spain');
INSERT INTO public.teams VALUES (37, 'Portugal');
INSERT INTO public.teams VALUES (38, 'Argentina');
INSERT INTO public.teams VALUES (39, 'Germany');
INSERT INTO public.teams VALUES (40, 'Netherlands');
INSERT INTO public.teams VALUES (41, 'Costa Rica');
INSERT INTO public.teams VALUES (42, 'Chile');
INSERT INTO public.teams VALUES (43, 'Nigeria');
INSERT INTO public.teams VALUES (44, 'Algeria');
INSERT INTO public.teams VALUES (45, 'Greece');
INSERT INTO public.teams VALUES (46, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 46, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

