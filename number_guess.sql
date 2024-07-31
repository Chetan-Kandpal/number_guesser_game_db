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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (227, 73, 319);
INSERT INTO public.games VALUES (228, 73, 591);
INSERT INTO public.games VALUES (229, 74, 690);
INSERT INTO public.games VALUES (230, 73, 107);
INSERT INTO public.games VALUES (231, 73, 527);
INSERT INTO public.games VALUES (232, 75, 394);
INSERT INTO public.games VALUES (233, 75, 699);
INSERT INTO public.games VALUES (234, 76, 636);
INSERT INTO public.games VALUES (235, 76, 700);
INSERT INTO public.games VALUES (236, 75, 556);
INSERT INTO public.games VALUES (237, 75, 906);
INSERT INTO public.games VALUES (238, 75, 939);
INSERT INTO public.games VALUES (239, 77, 724);
INSERT INTO public.games VALUES (240, 78, 817);
INSERT INTO public.games VALUES (241, 77, 862);
INSERT INTO public.games VALUES (242, 77, 773);
INSERT INTO public.games VALUES (243, 77, 266);
INSERT INTO public.games VALUES (244, 79, 663);
INSERT INTO public.games VALUES (245, 80, 413);
INSERT INTO public.games VALUES (246, 79, 790);
INSERT INTO public.games VALUES (247, 79, 62);
INSERT INTO public.games VALUES (248, 79, 59);
INSERT INTO public.games VALUES (249, 81, 390);
INSERT INTO public.games VALUES (250, 82, 525);
INSERT INTO public.games VALUES (251, 81, 381);
INSERT INTO public.games VALUES (252, 81, 72);
INSERT INTO public.games VALUES (253, 81, 542);
INSERT INTO public.games VALUES (254, 83, 721);
INSERT INTO public.games VALUES (255, 84, 367);
INSERT INTO public.games VALUES (256, 83, 820);
INSERT INTO public.games VALUES (257, 83, 860);
INSERT INTO public.games VALUES (258, 83, 266);
INSERT INTO public.games VALUES (259, 85, 563);
INSERT INTO public.games VALUES (260, 86, 15);
INSERT INTO public.games VALUES (261, 85, 626);
INSERT INTO public.games VALUES (262, 85, 394);
INSERT INTO public.games VALUES (263, 85, 953);
INSERT INTO public.games VALUES (264, 87, 675);
INSERT INTO public.games VALUES (265, 88, 833);
INSERT INTO public.games VALUES (266, 89, 364);
INSERT INTO public.games VALUES (267, 87, 830);
INSERT INTO public.games VALUES (268, 87, 435);
INSERT INTO public.games VALUES (269, 90, 184);
INSERT INTO public.games VALUES (270, 87, 337);
INSERT INTO public.games VALUES (271, 89, 152);
INSERT INTO public.games VALUES (272, 89, 666);
INSERT INTO public.games VALUES (273, 89, 561);
INSERT INTO public.games VALUES (274, 91, 805);
INSERT INTO public.games VALUES (275, 92, 581);
INSERT INTO public.games VALUES (276, 91, 870);
INSERT INTO public.games VALUES (277, 91, 602);
INSERT INTO public.games VALUES (278, 91, 429);
INSERT INTO public.games VALUES (279, 93, 627);
INSERT INTO public.games VALUES (280, 94, 841);
INSERT INTO public.games VALUES (281, 93, 233);
INSERT INTO public.games VALUES (282, 93, 973);
INSERT INTO public.games VALUES (283, 93, 966);
INSERT INTO public.games VALUES (284, 95, 224);
INSERT INTO public.games VALUES (285, 96, 167);
INSERT INTO public.games VALUES (286, 95, 72);
INSERT INTO public.games VALUES (287, 95, 231);
INSERT INTO public.games VALUES (288, 95, 474);
INSERT INTO public.games VALUES (289, 97, 724);
INSERT INTO public.games VALUES (290, 98, 172);
INSERT INTO public.games VALUES (291, 97, 455);
INSERT INTO public.games VALUES (292, 97, 228);
INSERT INTO public.games VALUES (293, 97, 951);
INSERT INTO public.games VALUES (294, 99, 284);
INSERT INTO public.games VALUES (295, 100, 415);
INSERT INTO public.games VALUES (296, 99, 383);
INSERT INTO public.games VALUES (297, 99, 514);
INSERT INTO public.games VALUES (298, 99, 722);
INSERT INTO public.games VALUES (299, 101, 649);
INSERT INTO public.games VALUES (300, 102, 868);
INSERT INTO public.games VALUES (301, 101, 190);
INSERT INTO public.games VALUES (302, 101, 119);
INSERT INTO public.games VALUES (303, 101, 77);
INSERT INTO public.games VALUES (304, 103, 100);
INSERT INTO public.games VALUES (305, 104, 73);
INSERT INTO public.games VALUES (306, 103, 253);
INSERT INTO public.games VALUES (307, 103, 201);
INSERT INTO public.games VALUES (308, 103, 441);
INSERT INTO public.games VALUES (309, 105, 204);
INSERT INTO public.games VALUES (310, 106, 902);
INSERT INTO public.games VALUES (311, 105, 789);
INSERT INTO public.games VALUES (312, 105, 916);
INSERT INTO public.games VALUES (313, 105, 792);
INSERT INTO public.games VALUES (314, 107, 487);
INSERT INTO public.games VALUES (315, 108, 695);
INSERT INTO public.games VALUES (316, 107, 284);
INSERT INTO public.games VALUES (317, 107, 519);
INSERT INTO public.games VALUES (318, 107, 381);
INSERT INTO public.games VALUES (319, 109, 219);
INSERT INTO public.games VALUES (320, 110, 819);
INSERT INTO public.games VALUES (321, 109, 926);
INSERT INTO public.games VALUES (322, 109, 787);
INSERT INTO public.games VALUES (323, 109, 372);
INSERT INTO public.games VALUES (324, 111, 922);
INSERT INTO public.games VALUES (325, 112, 433);
INSERT INTO public.games VALUES (326, 111, 731);
INSERT INTO public.games VALUES (327, 111, 314);
INSERT INTO public.games VALUES (328, 111, 473);
INSERT INTO public.games VALUES (329, 113, 613);
INSERT INTO public.games VALUES (330, 114, 869);
INSERT INTO public.games VALUES (331, 113, 211);
INSERT INTO public.games VALUES (332, 113, 253);
INSERT INTO public.games VALUES (333, 113, 335);
INSERT INTO public.games VALUES (334, 115, 799);
INSERT INTO public.games VALUES (335, 116, 574);
INSERT INTO public.games VALUES (336, 115, 884);
INSERT INTO public.games VALUES (337, 115, 712);
INSERT INTO public.games VALUES (338, 115, 953);
INSERT INTO public.games VALUES (339, 117, 364);
INSERT INTO public.games VALUES (340, 117, 342);
INSERT INTO public.games VALUES (341, 118, 673);
INSERT INTO public.games VALUES (342, 118, 80);
INSERT INTO public.games VALUES (343, 117, 410);
INSERT INTO public.games VALUES (344, 117, 637);
INSERT INTO public.games VALUES (345, 117, 445);
INSERT INTO public.games VALUES (346, 119, 97);
INSERT INTO public.games VALUES (347, 119, 409);
INSERT INTO public.games VALUES (348, 120, 696);
INSERT INTO public.games VALUES (349, 120, 594);
INSERT INTO public.games VALUES (350, 119, 165);
INSERT INTO public.games VALUES (351, 119, 463);
INSERT INTO public.games VALUES (352, 119, 86);
INSERT INTO public.games VALUES (353, 121, 748);
INSERT INTO public.games VALUES (354, 121, 2);
INSERT INTO public.games VALUES (355, 122, 891);
INSERT INTO public.games VALUES (356, 122, 429);
INSERT INTO public.games VALUES (357, 121, 968);
INSERT INTO public.games VALUES (358, 121, 769);
INSERT INTO public.games VALUES (359, 121, 323);
INSERT INTO public.games VALUES (360, 123, 532);
INSERT INTO public.games VALUES (361, 123, 935);
INSERT INTO public.games VALUES (362, 124, 992);
INSERT INTO public.games VALUES (363, 124, 996);
INSERT INTO public.games VALUES (364, 123, 21);
INSERT INTO public.games VALUES (365, 123, 844);
INSERT INTO public.games VALUES (366, 123, 79);
INSERT INTO public.games VALUES (367, 125, 466);
INSERT INTO public.games VALUES (368, 125, 643);
INSERT INTO public.games VALUES (369, 126, 800);
INSERT INTO public.games VALUES (370, 126, 327);
INSERT INTO public.games VALUES (371, 125, 346);
INSERT INTO public.games VALUES (372, 125, 520);
INSERT INTO public.games VALUES (373, 125, 430);
INSERT INTO public.games VALUES (374, 127, 352);
INSERT INTO public.games VALUES (375, 127, 641);
INSERT INTO public.games VALUES (376, 128, 109);
INSERT INTO public.games VALUES (377, 128, 766);
INSERT INTO public.games VALUES (378, 127, 317);
INSERT INTO public.games VALUES (379, 127, 763);
INSERT INTO public.games VALUES (380, 127, 680);
INSERT INTO public.games VALUES (381, 129, 3);
INSERT INTO public.games VALUES (382, 129, 575);
INSERT INTO public.games VALUES (383, 130, 253);
INSERT INTO public.games VALUES (384, 130, 588);
INSERT INTO public.games VALUES (385, 129, 506);
INSERT INTO public.games VALUES (386, 129, 853);
INSERT INTO public.games VALUES (387, 129, 425);
INSERT INTO public.games VALUES (388, 131, 567);
INSERT INTO public.games VALUES (389, 131, 131);
INSERT INTO public.games VALUES (390, 132, 151);
INSERT INTO public.games VALUES (391, 132, 35);
INSERT INTO public.games VALUES (392, 131, 265);
INSERT INTO public.games VALUES (393, 131, 28);
INSERT INTO public.games VALUES (394, 131, 478);
INSERT INTO public.games VALUES (395, 133, 111);
INSERT INTO public.games VALUES (396, 133, 667);
INSERT INTO public.games VALUES (397, 134, 146);
INSERT INTO public.games VALUES (398, 134, 681);
INSERT INTO public.games VALUES (399, 133, 357);
INSERT INTO public.games VALUES (400, 133, 552);
INSERT INTO public.games VALUES (401, 133, 381);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (73, 'user_1678936134195');
INSERT INTO public.users VALUES (74, 'user_1678936134194');
INSERT INTO public.users VALUES (75, 'user_1722446705860');
INSERT INTO public.users VALUES (76, 'user_1722446705859');
INSERT INTO public.users VALUES (77, 'user_1722447984843');
INSERT INTO public.users VALUES (78, 'user_1722447984842');
INSERT INTO public.users VALUES (79, 'user_1722447994502');
INSERT INTO public.users VALUES (80, 'user_1722447994501');
INSERT INTO public.users VALUES (81, 'user_1722447997084');
INSERT INTO public.users VALUES (82, 'user_1722447997083');
INSERT INTO public.users VALUES (83, 'user_1722448003424');
INSERT INTO public.users VALUES (84, 'user_1722448003423');
INSERT INTO public.users VALUES (85, 'user_1722448331302');
INSERT INTO public.users VALUES (86, 'user_1722448331301');
INSERT INTO public.users VALUES (87, 'user_1722448333414');
INSERT INTO public.users VALUES (88, 'user_1722448333413');
INSERT INTO public.users VALUES (89, 'user_1722448333972');
INSERT INTO public.users VALUES (90, 'user_1722448333971');
INSERT INTO public.users VALUES (91, 'user_1722448336829');
INSERT INTO public.users VALUES (92, 'user_1722448336828');
INSERT INTO public.users VALUES (93, 'user_1722448339050');
INSERT INTO public.users VALUES (94, 'user_1722448339049');
INSERT INTO public.users VALUES (95, 'user_1722448341213');
INSERT INTO public.users VALUES (96, 'user_1722448341212');
INSERT INTO public.users VALUES (97, 'user_1722448342945');
INSERT INTO public.users VALUES (98, 'user_1722448342944');
INSERT INTO public.users VALUES (99, 'user_1722448344752');
INSERT INTO public.users VALUES (100, 'user_1722448344751');
INSERT INTO public.users VALUES (101, 'user_1722448346584');
INSERT INTO public.users VALUES (102, 'user_1722448346583');
INSERT INTO public.users VALUES (103, 'user_1722448348390');
INSERT INTO public.users VALUES (104, 'user_1722448348389');
INSERT INTO public.users VALUES (105, 'user_1722448350213');
INSERT INTO public.users VALUES (106, 'user_1722448350212');
INSERT INTO public.users VALUES (107, 'user_1722448352015');
INSERT INTO public.users VALUES (108, 'user_1722448352014');
INSERT INTO public.users VALUES (109, 'user_1722448353691');
INSERT INTO public.users VALUES (110, 'user_1722448353690');
INSERT INTO public.users VALUES (111, 'user_1722448355555');
INSERT INTO public.users VALUES (112, 'user_1722448355554');
INSERT INTO public.users VALUES (113, 'user_1722448358218');
INSERT INTO public.users VALUES (114, 'user_1722448358217');
INSERT INTO public.users VALUES (115, 'user_1722448582701');
INSERT INTO public.users VALUES (116, 'user_1722448582700');
INSERT INTO public.users VALUES (117, 'user_1722448622025');
INSERT INTO public.users VALUES (118, 'user_1722448622024');
INSERT INTO public.users VALUES (119, 'user_1722448631560');
INSERT INTO public.users VALUES (120, 'user_1722448631559');
INSERT INTO public.users VALUES (121, 'user_1722448826131');
INSERT INTO public.users VALUES (122, 'user_1722448826130');
INSERT INTO public.users VALUES (123, 'user_1722448890190');
INSERT INTO public.users VALUES (124, 'user_1722448890189');
INSERT INTO public.users VALUES (125, 'user_1722448904491');
INSERT INTO public.users VALUES (126, 'user_1722448904490');
INSERT INTO public.users VALUES (127, 'user_1722448916182');
INSERT INTO public.users VALUES (128, 'user_1722448916181');
INSERT INTO public.users VALUES (129, 'user_1722448926784');
INSERT INTO public.users VALUES (130, 'user_1722448926783');
INSERT INTO public.users VALUES (131, 'user_1722448935907');
INSERT INTO public.users VALUES (132, 'user_1722448935906');
INSERT INTO public.users VALUES (133, 'user_1722448942273');
INSERT INTO public.users VALUES (134, 'user_1722448942272');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 401, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 134, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

