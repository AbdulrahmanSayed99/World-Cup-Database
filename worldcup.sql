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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(70) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(70) NOT NULL
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

INSERT INTO public.games VALUES (171, 2018, 'Final', 210, 211, 4, 2);
INSERT INTO public.games VALUES (172, 2018, 'Third Place', 212, 213, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Semi-Final', 211, 213, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Semi-Final', 210, 212, 1, 0);
INSERT INTO public.games VALUES (175, 2018, 'Quarter-Final', 211, 214, 3, 2);
INSERT INTO public.games VALUES (176, 2018, 'Quarter-Final', 213, 215, 2, 0);
INSERT INTO public.games VALUES (177, 2018, 'Quarter-Final', 212, 216, 2, 1);
INSERT INTO public.games VALUES (178, 2018, 'Quarter-Final', 210, 217, 2, 0);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 213, 218, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Eighth-Final', 215, 219, 1, 0);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 212, 220, 3, 2);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 216, 221, 2, 0);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 211, 222, 2, 1);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 214, 223, 2, 1);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 217, 224, 2, 1);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 210, 225, 4, 3);
INSERT INTO public.games VALUES (187, 2014, 'Final', 226, 225, 1, 0);
INSERT INTO public.games VALUES (188, 2014, 'Third Place', 227, 216, 3, 0);
INSERT INTO public.games VALUES (189, 2014, 'Semi-Final', 225, 227, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Semi-Final', 226, 216, 7, 1);
INSERT INTO public.games VALUES (191, 2014, 'Quarter-Final', 227, 228, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Quarter-Final', 225, 212, 1, 0);
INSERT INTO public.games VALUES (193, 2014, 'Quarter-Final', 216, 218, 2, 1);
INSERT INTO public.games VALUES (194, 2014, 'Quarter-Final', 226, 210, 1, 0);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 216, 229, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Eighth-Final', 218, 217, 2, 0);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 210, 230, 2, 0);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 226, 231, 2, 1);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 227, 221, 2, 1);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 228, 232, 2, 1);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 225, 219, 1, 0);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 212, 233, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (210, 'France');
INSERT INTO public.teams VALUES (211, 'Croatia');
INSERT INTO public.teams VALUES (212, 'Belgium');
INSERT INTO public.teams VALUES (213, 'England');
INSERT INTO public.teams VALUES (214, 'Russia');
INSERT INTO public.teams VALUES (215, 'Sweden');
INSERT INTO public.teams VALUES (216, 'Brazil');
INSERT INTO public.teams VALUES (217, 'Uruguay');
INSERT INTO public.teams VALUES (218, 'Colombia');
INSERT INTO public.teams VALUES (219, 'Switzerland');
INSERT INTO public.teams VALUES (220, 'Japan');
INSERT INTO public.teams VALUES (221, 'Mexico');
INSERT INTO public.teams VALUES (222, 'Denmark');
INSERT INTO public.teams VALUES (223, 'Spain');
INSERT INTO public.teams VALUES (224, 'Portugal');
INSERT INTO public.teams VALUES (225, 'Argentina');
INSERT INTO public.teams VALUES (226, 'Germany');
INSERT INTO public.teams VALUES (227, 'Netherlands');
INSERT INTO public.teams VALUES (228, 'Costa Rica');
INSERT INTO public.teams VALUES (229, 'Chile');
INSERT INTO public.teams VALUES (230, 'Nigeria');
INSERT INTO public.teams VALUES (231, 'Algeria');
INSERT INTO public.teams VALUES (232, 'Greece');
INSERT INTO public.teams VALUES (233, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 202, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 233, true);


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

