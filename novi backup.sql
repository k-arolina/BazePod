--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-02 21:40:40

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
-- TOC entry 215 (class 1259 OID 16490)
-- Name: hrana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hrana (
    vrsta_hrane character(30) NOT NULL,
    potrosena_kolicina real DEFAULT 0,
    kolicina_za_nabavu real DEFAULT 0,
    cijena real DEFAULT 0,
    trenutna_kolicina real DEFAULT 0
);


ALTER TABLE public.hrana OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16497)
-- Name: posjetitelj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posjetitelj (
    id_posjetitelja character(10) NOT NULL,
    ime_prezime character(30),
    datum_vrijeme_posjete timestamp without time zone DEFAULT now()
);


ALTER TABLE public.posjetitelj OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16501)
-- Name: posjetitelj_staniste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posjetitelj_staniste (
    "posjetitelj_ID" character(10),
    "staniste_ID" character(10)
);


ALTER TABLE public.posjetitelj_staniste OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16504)
-- Name: staniste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staniste (
    id_stanista character(10) NOT NULL,
    trenutno_zivotinja real DEFAULT 0,
    max_kapacitet real DEFAULT 0,
    ime_stanista character(30)
);


ALTER TABLE public.staniste OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16509)
-- Name: stanje_zaposlenika; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stanje_zaposlenika (
    id_evidencije character(10) NOT NULL,
    datum_vrijeme_dolaska timestamp without time zone,
    datum_vrijeme_odlaska timestamp without time zone
);


ALTER TABLE public.stanje_zaposlenika OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16512)
-- Name: stanje_zivotinja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stanje_zivotinja (
    id_evidencije_zivotinje character(10) NOT NULL,
    datum_dolaska date,
    datum_odlaska date
);


ALTER TABLE public.stanje_zivotinja OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16515)
-- Name: zaposlenik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zaposlenik (
    oib character(11) NOT NULL,
    ime_prezime character(30),
    adresa character(35),
    vrsta_posla character(30),
    id_ev character(10)
);


ALTER TABLE public.zaposlenik OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16518)
-- Name: zaposlenik_staniste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zaposlenik_staniste (
    id_stan character(10),
    oib character(11)
);


ALTER TABLE public.zaposlenik_staniste OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16521)
-- Name: zivotinja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zivotinja (
    id_zivotinje character(5) NOT NULL,
    vrsta character(30),
    ime character(30),
    id_st character(10),
    id_ev_z character(10)
);


ALTER TABLE public.zivotinja OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16524)
-- Name: zivotinja_hrana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zivotinja_hrana (
    id_ziv character(5),
    vrsta_hrane character(30)
);


ALTER TABLE public.zivotinja_hrana OWNER TO postgres;

--
-- TOC entry 4842 (class 0 OID 16490)
-- Dependencies: 215
-- Data for Name: hrana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM stdin;
Suncokretove sjemenke         	20	30	0.5	35
Meso                          	50	70	1.5	37
Riba                          	25	21	0.7	13
Lisce akacije                 	105	150	0.3	94
Med                           	26	50	2.5	50
\.


--
-- TOC entry 4843 (class 0 OID 16497)
-- Dependencies: 216
-- Data for Name: posjetitelj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM stdin;
10014     	Matko Matic                   	2024-03-03 12:36:26
10062     	Ivana Pivic                   	2024-02-21 15:01:00
10147     	Ivan Iivic                    	2024-02-20 15:00:00
10083     	Marija Maric                  	2024-03-10 09:43:43
10153     	Ana Anic                      	2024-06-13 13:06:06
\.


--
-- TOC entry 4844 (class 0 OID 16501)
-- Dependencies: 217
-- Data for Name: posjetitelj_staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM stdin;
10014     	0000000123
10014     	0000002345
10062     	0000002345
10083     	0000002345
10083     	0000000123
10083     	0000000999
10083     	8765432109
10147     	8765432109
10153     	0000000123
10153     	0000002345
\.


--
-- TOC entry 4845 (class 0 OID 16504)
-- Dependencies: 218
-- Data for Name: staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet, ime_stanista) FROM stdin;
0000000123	4	10	savana                        
0000002345	3	5	ledenjak                      
0000000999	0	3	suma                          
8765432109	2	7	tropi                         
\.


--
-- TOC entry 4846 (class 0 OID 16509)
-- Dependencies: 219
-- Data for Name: stanje_zaposlenika; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM stdin;
99        	2024-05-22 08:00:00	2024-05-22 16:00:00
11        	2024-02-12 07:59:45	2024-02-12 19:01:12
34        	2024-02-12 07:58:12	2024-02-12 16:00:02
55        	2024-02-13 07:59:00	2024-02-13 16:59:02
\.


--
-- TOC entry 4847 (class 0 OID 16512)
-- Dependencies: 220
-- Data for Name: stanje_zivotinja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM stdin;
1111111112	2001-01-01	2035-02-02
9999999990	2020-01-30	2025-12-01
9999999991	2010-05-15	2025-12-01
9999999009	2013-02-28	2029-01-16
1234500001	2016-10-28	2028-04-15
1234500002	2016-10-29	2028-04-16
1234500010	2013-07-06	2030-01-01
1234500011	2013-08-06	2030-01-01
1234500091	2015-08-06	2070-11-01
\.


--
-- TOC entry 4848 (class 0 OID 16515)
-- Dependencies: 221
-- Data for Name: zaposlenik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM stdin;
12345678901	Ivan Komic                    	Kocka, Split                       	Domar                         	99        
12345678902	Dino Dinic                    	Kocka, Split                       	Veterinar                     	11        
12345678905	Anica Anic                    	FESB, Split                        	Vodic                         	55        
12345678912	Pero Peric                    	FESB, Split                        	Domar                         	34        
\.


--
-- TOC entry 4849 (class 0 OID 16518)
-- Dependencies: 222
-- Data for Name: zaposlenik_staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zaposlenik_staniste (id_stan, oib) FROM stdin;
0000000123	12345678901
0000000123	12345678902
0000000123	12345678905
0000000999	12345678912
0000002345	12345678912
0000002345	12345678905
8765432109	12345678905
8765432109	12345678901
\.


--
-- TOC entry 4850 (class 0 OID 16521)
-- Dependencies: 223
-- Data for Name: zivotinja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM stdin;
12346	Pingvin                       	Pipi                          	0000002345	9999999991
12345	Pingvin                       	Pingo                         	0000002345	1111111112
12300	Papagaj                       	Pero                          	8765432109	9999999990
12347	Pingvin                       	Marko                         	0000002345	9999999009
12390	Lav                           	Leo                           	0000000123	1234500001
12391	Lav                           	Linda                         	0000000123	1234500002
12396	Zirafa                        	Zigi                          	0000000123	1234500010
12397	Zirafa                        	Ema                           	0000000123	1234500011
12340	Papagaj                       	Kico                          	8765432109	1234500091
\.


--
-- TOC entry 4851 (class 0 OID 16524)
-- Dependencies: 224
-- Data for Name: zivotinja_hrana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM stdin;
12345	Suncokretove sjemenke         
12397	Lisce akacije                 
12396	Lisce akacije                 
12391	Meso                          
12390	Meso                          
12347	Riba                          
12346	Riba                          
12345	Riba                          
12340	Suncokretove sjemenke         
12300	Suncokretove sjemenke         
12300	Lisce akacije                 
12346	Suncokretove sjemenke         
\.


--
-- TOC entry 4677 (class 2606 OID 16528)
-- Name: hrana hrana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hrana
    ADD CONSTRAINT hrana_pkey PRIMARY KEY (vrsta_hrane);


--
-- TOC entry 4679 (class 2606 OID 16530)
-- Name: posjetitelj posjetitelj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj
    ADD CONSTRAINT posjetitelj_pkey PRIMARY KEY (id_posjetitelja);


--
-- TOC entry 4681 (class 2606 OID 16532)
-- Name: staniste staniste_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staniste
    ADD CONSTRAINT staniste_pkey PRIMARY KEY (id_stanista);


--
-- TOC entry 4683 (class 2606 OID 16534)
-- Name: stanje_zaposlenika stanje_zaposlenika_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanje_zaposlenika
    ADD CONSTRAINT stanje_zaposlenika_pkey PRIMARY KEY (id_evidencije);


--
-- TOC entry 4685 (class 2606 OID 16536)
-- Name: stanje_zivotinja stanje_zivotinja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanje_zivotinja
    ADD CONSTRAINT stanje_zivotinja_pkey PRIMARY KEY (id_evidencije_zivotinje);


--
-- TOC entry 4687 (class 2606 OID 16538)
-- Name: zaposlenik zaposlenik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (oib);


--
-- TOC entry 4689 (class 2606 OID 16540)
-- Name: zivotinja zivotinja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_pkey PRIMARY KEY (id_zivotinje);


--
-- TOC entry 4690 (class 2606 OID 16541)
-- Name: posjetitelj_staniste fk_posjetitelj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_posjetitelj FOREIGN KEY ("posjetitelj_ID") REFERENCES public.posjetitelj(id_posjetitelja);


--
-- TOC entry 4691 (class 2606 OID 16546)
-- Name: posjetitelj_staniste fk_staniste; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_staniste FOREIGN KEY ("staniste_ID") REFERENCES public.staniste(id_stanista);


--
-- TOC entry 4692 (class 2606 OID 16551)
-- Name: zaposlenik zaposlenik_id_ev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_id_ev_fkey FOREIGN KEY (id_ev) REFERENCES public.stanje_zaposlenika(id_evidencije);


--
-- TOC entry 4693 (class 2606 OID 16556)
-- Name: zaposlenik_staniste zaposlenik_staniste_id_stan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_id_stan_fkey FOREIGN KEY (id_stan) REFERENCES public.staniste(id_stanista);


--
-- TOC entry 4694 (class 2606 OID 16561)
-- Name: zaposlenik_staniste zaposlenik_staniste_oib_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_oib_fkey FOREIGN KEY (oib) REFERENCES public.zaposlenik(oib);


--
-- TOC entry 4697 (class 2606 OID 16566)
-- Name: zivotinja_hrana zivotinja_hrana_id_ziv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_id_ziv_fkey FOREIGN KEY (id_ziv) REFERENCES public.zivotinja(id_zivotinje);


--
-- TOC entry 4698 (class 2606 OID 16571)
-- Name: zivotinja_hrana zivotinja_hrana_vrsta_hrane_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey FOREIGN KEY (vrsta_hrane) REFERENCES public.hrana(vrsta_hrane);


--
-- TOC entry 4695 (class 2606 OID 16576)
-- Name: zivotinja zivotinja_id_ev_z_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_ev_z_fkey FOREIGN KEY (id_ev_z) REFERENCES public.stanje_zivotinja(id_evidencije_zivotinje);


--
-- TOC entry 4696 (class 2606 OID 16581)
-- Name: zivotinja zivotinja_id_st_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_st_fkey FOREIGN KEY (id_st) REFERENCES public.staniste(id_stanista);


-- Completed on 2024-06-02 21:40:40

--
-- PostgreSQL database dump complete
--

