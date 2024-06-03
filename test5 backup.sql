toc.dat                                                                                             0000600 0004000 0002000 00000030321 14627405372 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |           test    16.3    16.3 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16489    test    DATABASE     x   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Europe.1252';
    DROP DATABASE test;
                postgres    false         �            1259    16490    hrana    TABLE     �   CREATE TABLE public.hrana (
    vrsta_hrane character(30) NOT NULL,
    potrosena_kolicina real DEFAULT 0,
    kolicina_za_nabavu real DEFAULT 0,
    cijena real DEFAULT 0,
    trenutna_kolicina real DEFAULT 0
);
    DROP TABLE public.hrana;
       public         heap    postgres    false         �            1259    16497    posjetitelj    TABLE     �   CREATE TABLE public.posjetitelj (
    id_posjetitelja character(10) NOT NULL,
    ime_prezime character(30),
    datum_vrijeme_posjete timestamp without time zone DEFAULT now()
);
    DROP TABLE public.posjetitelj;
       public         heap    postgres    false         �            1259    16501    posjetitelj_staniste    TABLE     r   CREATE TABLE public.posjetitelj_staniste (
    "posjetitelj_ID" character(10),
    "staniste_ID" character(10)
);
 (   DROP TABLE public.posjetitelj_staniste;
       public         heap    postgres    false         �            1259    16504    staniste    TABLE     �   CREATE TABLE public.staniste (
    id_stanista character(10) NOT NULL,
    trenutno_zivotinja real DEFAULT 0,
    max_kapacitet real DEFAULT 0,
    ime_stanista character(30)
);
    DROP TABLE public.staniste;
       public         heap    postgres    false         �            1259    16509    stanje_zaposlenika    TABLE     �   CREATE TABLE public.stanje_zaposlenika (
    id_evidencije character(10) NOT NULL,
    datum_vrijeme_dolaska timestamp without time zone,
    datum_vrijeme_odlaska timestamp without time zone
);
 &   DROP TABLE public.stanje_zaposlenika;
       public         heap    postgres    false         �            1259    16512    stanje_zivotinja    TABLE     �   CREATE TABLE public.stanje_zivotinja (
    id_evidencije_zivotinje character(10) NOT NULL,
    datum_dolaska date,
    datum_odlaska date
);
 $   DROP TABLE public.stanje_zivotinja;
       public         heap    postgres    false         �            1259    16515 
   zaposlenik    TABLE     �   CREATE TABLE public.zaposlenik (
    oib character(11) NOT NULL,
    ime_prezime character(30),
    adresa character(35),
    vrsta_posla character(30),
    id_ev character(10)
);
    DROP TABLE public.zaposlenik;
       public         heap    postgres    false         �            1259    16518    zaposlenik_staniste    TABLE     ^   CREATE TABLE public.zaposlenik_staniste (
    id_stan character(10),
    oib character(11)
);
 '   DROP TABLE public.zaposlenik_staniste;
       public         heap    postgres    false         �            1259    16521 	   zivotinja    TABLE     �   CREATE TABLE public.zivotinja (
    id_zivotinje character(5) NOT NULL,
    vrsta character(30),
    ime character(30),
    id_st character(10),
    id_ev_z character(10)
);
    DROP TABLE public.zivotinja;
       public         heap    postgres    false         �            1259    16524    zivotinja_hrana    TABLE     `   CREATE TABLE public.zivotinja_hrana (
    id_ziv character(5),
    vrsta_hrane character(30)
);
 #   DROP TABLE public.zivotinja_hrana;
       public         heap    postgres    false         �          0    16490    hrana 
   TABLE DATA           o   COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM stdin;
    public          postgres    false    215       4842.dat �          0    16497    posjetitelj 
   TABLE DATA           Z   COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM stdin;
    public          postgres    false    216       4843.dat �          0    16501    posjetitelj_staniste 
   TABLE DATA           O   COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM stdin;
    public          postgres    false    217       4844.dat �          0    16504    staniste 
   TABLE DATA           `   COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet, ime_stanista) FROM stdin;
    public          postgres    false    218       4845.dat �          0    16509    stanje_zaposlenika 
   TABLE DATA           i   COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM stdin;
    public          postgres    false    219       4846.dat �          0    16512    stanje_zivotinja 
   TABLE DATA           a   COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM stdin;
    public          postgres    false    220       4847.dat �          0    16515 
   zaposlenik 
   TABLE DATA           R   COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM stdin;
    public          postgres    false    221       4848.dat �          0    16518    zaposlenik_staniste 
   TABLE DATA           ;   COPY public.zaposlenik_staniste (id_stan, oib) FROM stdin;
    public          postgres    false    222       4849.dat �          0    16521 	   zivotinja 
   TABLE DATA           M   COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM stdin;
    public          postgres    false    223       4850.dat �          0    16524    zivotinja_hrana 
   TABLE DATA           >   COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM stdin;
    public          postgres    false    224       4851.dat E           2606    16528    hrana hrana_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.hrana
    ADD CONSTRAINT hrana_pkey PRIMARY KEY (vrsta_hrane);
 :   ALTER TABLE ONLY public.hrana DROP CONSTRAINT hrana_pkey;
       public            postgres    false    215         G           2606    16530    posjetitelj posjetitelj_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.posjetitelj
    ADD CONSTRAINT posjetitelj_pkey PRIMARY KEY (id_posjetitelja);
 F   ALTER TABLE ONLY public.posjetitelj DROP CONSTRAINT posjetitelj_pkey;
       public            postgres    false    216         I           2606    16532    staniste staniste_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.staniste
    ADD CONSTRAINT staniste_pkey PRIMARY KEY (id_stanista);
 @   ALTER TABLE ONLY public.staniste DROP CONSTRAINT staniste_pkey;
       public            postgres    false    218         K           2606    16534 *   stanje_zaposlenika stanje_zaposlenika_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.stanje_zaposlenika
    ADD CONSTRAINT stanje_zaposlenika_pkey PRIMARY KEY (id_evidencije);
 T   ALTER TABLE ONLY public.stanje_zaposlenika DROP CONSTRAINT stanje_zaposlenika_pkey;
       public            postgres    false    219         M           2606    16536 &   stanje_zivotinja stanje_zivotinja_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.stanje_zivotinja
    ADD CONSTRAINT stanje_zivotinja_pkey PRIMARY KEY (id_evidencije_zivotinje);
 P   ALTER TABLE ONLY public.stanje_zivotinja DROP CONSTRAINT stanje_zivotinja_pkey;
       public            postgres    false    220         O           2606    16538    zaposlenik zaposlenik_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (oib);
 D   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_pkey;
       public            postgres    false    221         Q           2606    16540    zivotinja zivotinja_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_pkey PRIMARY KEY (id_zivotinje);
 B   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_pkey;
       public            postgres    false    223         R           2606    16541 #   posjetitelj_staniste fk_posjetitelj    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_posjetitelj FOREIGN KEY ("posjetitelj_ID") REFERENCES public.posjetitelj(id_posjetitelja);
 M   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_posjetitelj;
       public          postgres    false    216    217    4679         S           2606    16546     posjetitelj_staniste fk_staniste    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_staniste FOREIGN KEY ("staniste_ID") REFERENCES public.staniste(id_stanista);
 J   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_staniste;
       public          postgres    false    217    4681    218         T           2606    16551     zaposlenik zaposlenik_id_ev_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_id_ev_fkey FOREIGN KEY (id_ev) REFERENCES public.stanje_zaposlenika(id_evidencije);
 J   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_id_ev_fkey;
       public          postgres    false    219    4683    221         U           2606    16556 4   zaposlenik_staniste zaposlenik_staniste_id_stan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_id_stan_fkey FOREIGN KEY (id_stan) REFERENCES public.staniste(id_stanista);
 ^   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_id_stan_fkey;
       public          postgres    false    222    218    4681         V           2606    16561 0   zaposlenik_staniste zaposlenik_staniste_oib_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_oib_fkey FOREIGN KEY (oib) REFERENCES public.zaposlenik(oib);
 Z   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_oib_fkey;
       public          postgres    false    221    222    4687         Y           2606    16566 +   zivotinja_hrana zivotinja_hrana_id_ziv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_id_ziv_fkey FOREIGN KEY (id_ziv) REFERENCES public.zivotinja(id_zivotinje);
 U   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_id_ziv_fkey;
       public          postgres    false    224    4689    223         Z           2606    16571 0   zivotinja_hrana zivotinja_hrana_vrsta_hrane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey FOREIGN KEY (vrsta_hrane) REFERENCES public.hrana(vrsta_hrane);
 Z   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey;
       public          postgres    false    224    4677    215         W           2606    16576     zivotinja zivotinja_id_ev_z_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_ev_z_fkey FOREIGN KEY (id_ev_z) REFERENCES public.stanje_zivotinja(id_evidencije_zivotinje);
 J   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_ev_z_fkey;
       public          postgres    false    220    223    4685         X           2606    16581    zivotinja zivotinja_id_st_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_st_fkey FOREIGN KEY (id_st) REFERENCES public.staniste(id_stanista);
 H   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_st_fkey;
       public          postgres    false    4681    223    218                                                                                                                                                                                                                                                                                                                       4842.dat                                                                                            0000600 0004000 0002000 00000000343 14627405372 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Suncokretove sjemenke         	20	30	0.5	35
Meso                          	50	70	1.5	37
Riba                          	25	21	0.7	13
Lisce akacije                 	105	150	0.3	94
Med                           	26	50	2.5	50
\.


                                                                                                                                                                                                                                                                                             4843.dat                                                                                            0000600 0004000 0002000 00000000473 14627405372 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10014     	Matko Matic                   	2024-03-03 12:36:26
10062     	Ivana Pivic                   	2024-02-21 15:01:00
10147     	Ivan Iivic                    	2024-02-20 15:00:00
10083     	Marija Maric                  	2024-03-10 09:43:43
10153     	Ana Anic                      	2024-06-13 13:06:06
\.


                                                                                                                                                                                                     4844.dat                                                                                            0000600 0004000 0002000 00000000341 14627405372 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10014     	0000000123
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


                                                                                                                                                                                                                                                                                               4845.dat                                                                                            0000600 0004000 0002000 00000000276 14627405372 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0000000123	4	10	savana                        
0000002345	3	5	ledenjak                      
0000000999	0	3	suma                          
8765432109	2	7	tropi                         
\.


                                                                                                                                                                                                                                                                                                                                  4846.dat                                                                                            0000600 0004000 0002000 00000000321 14627405372 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        99        	2024-05-22 08:00:00	2024-05-22 16:00:00
11        	2024-02-12 07:59:45	2024-02-12 19:01:12
34        	2024-02-12 07:58:12	2024-02-12 16:00:02
55        	2024-02-13 07:59:00	2024-02-13 16:59:02
\.


                                                                                                                                                                                                                                                                                                               4847.dat                                                                                            0000600 0004000 0002000 00000000456 14627405372 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1111111112	2001-01-01	2035-02-02
9999999990	2020-01-30	2025-12-01
9999999991	2010-05-15	2025-12-01
9999999009	2013-02-28	2029-01-16
1234500001	2016-10-28	2028-04-15
1234500002	2016-10-29	2028-04-16
1234500010	2013-07-06	2030-01-01
1234500011	2013-08-06	2030-01-01
1234500091	2015-08-06	2070-11-01
\.


                                                                                                                                                                                                                  4848.dat                                                                                            0000600 0004000 0002000 00000000751 14627405372 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12345678901	Ivan Komic                    	Kocka, Split                       	Domar                         	99        
12345678902	Dino Dinic                    	Kocka, Split                       	Veterinar                     	11        
12345678905	Anica Anic                    	FESB, Split                        	Vodic                         	55        
12345678912	Pero Peric                    	FESB, Split                        	Domar                         	34        
\.


                       4849.dat                                                                                            0000600 0004000 0002000 00000000275 14627405372 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0000000123	12345678901
0000000123	12345678902
0000000123	12345678905
0000000999	12345678912
0000002345	12345678912
0000002345	12345678905
8765432109	12345678905
8765432109	12345678901
\.


                                                                                                                                                                                                                                                                                                                                   4850.dat                                                                                            0000600 0004000 0002000 00000001457 14627405372 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12346	Pingvin                       	Pipi                          	0000002345	9999999991
12345	Pingvin                       	Pingo                         	0000002345	1111111112
12300	Papagaj                       	Pero                          	8765432109	9999999990
12347	Pingvin                       	Marko                         	0000002345	9999999009
12390	Lav                           	Leo                           	0000000123	1234500001
12391	Lav                           	Linda                         	0000000123	1234500002
12396	Zirafa                        	Zigi                          	0000000123	1234500010
12397	Zirafa                        	Ema                           	0000000123	1234500011
12340	Papagaj                       	Kico                          	8765432109	1234500091
\.


                                                                                                                                                                                                                 4851.dat                                                                                            0000600 0004000 0002000 00000000701 14627405372 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12345	Suncokretove sjemenke         
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


                                                               restore.sql                                                                                         0000600 0004000 0002000 00000024776 14627405372 0015416 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

DROP DATABASE test;
--
-- Name: test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Europe.1252';


ALTER DATABASE test OWNER TO postgres;

\connect test

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
-- Name: posjetitelj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posjetitelj (
    id_posjetitelja character(10) NOT NULL,
    ime_prezime character(30),
    datum_vrijeme_posjete timestamp without time zone DEFAULT now()
);


ALTER TABLE public.posjetitelj OWNER TO postgres;

--
-- Name: posjetitelj_staniste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posjetitelj_staniste (
    "posjetitelj_ID" character(10),
    "staniste_ID" character(10)
);


ALTER TABLE public.posjetitelj_staniste OWNER TO postgres;

--
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
-- Name: stanje_zaposlenika; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stanje_zaposlenika (
    id_evidencije character(10) NOT NULL,
    datum_vrijeme_dolaska timestamp without time zone,
    datum_vrijeme_odlaska timestamp without time zone
);


ALTER TABLE public.stanje_zaposlenika OWNER TO postgres;

--
-- Name: stanje_zivotinja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stanje_zivotinja (
    id_evidencije_zivotinje character(10) NOT NULL,
    datum_dolaska date,
    datum_odlaska date
);


ALTER TABLE public.stanje_zivotinja OWNER TO postgres;

--
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
-- Name: zaposlenik_staniste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zaposlenik_staniste (
    id_stan character(10),
    oib character(11)
);


ALTER TABLE public.zaposlenik_staniste OWNER TO postgres;

--
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
-- Name: zivotinja_hrana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zivotinja_hrana (
    id_ziv character(5),
    vrsta_hrane character(30)
);


ALTER TABLE public.zivotinja_hrana OWNER TO postgres;

--
-- Data for Name: hrana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM stdin;
\.
COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM '$$PATH$$/4842.dat';

--
-- Data for Name: posjetitelj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM stdin;
\.
COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM '$$PATH$$/4843.dat';

--
-- Data for Name: posjetitelj_staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM stdin;
\.
COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM '$$PATH$$/4844.dat';

--
-- Data for Name: staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet, ime_stanista) FROM stdin;
\.
COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet, ime_stanista) FROM '$$PATH$$/4845.dat';

--
-- Data for Name: stanje_zaposlenika; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM stdin;
\.
COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM '$$PATH$$/4846.dat';

--
-- Data for Name: stanje_zivotinja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM stdin;
\.
COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM '$$PATH$$/4847.dat';

--
-- Data for Name: zaposlenik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM stdin;
\.
COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM '$$PATH$$/4848.dat';

--
-- Data for Name: zaposlenik_staniste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zaposlenik_staniste (id_stan, oib) FROM stdin;
\.
COPY public.zaposlenik_staniste (id_stan, oib) FROM '$$PATH$$/4849.dat';

--
-- Data for Name: zivotinja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM stdin;
\.
COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM '$$PATH$$/4850.dat';

--
-- Data for Name: zivotinja_hrana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM stdin;
\.
COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM '$$PATH$$/4851.dat';

--
-- Name: hrana hrana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hrana
    ADD CONSTRAINT hrana_pkey PRIMARY KEY (vrsta_hrane);


--
-- Name: posjetitelj posjetitelj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj
    ADD CONSTRAINT posjetitelj_pkey PRIMARY KEY (id_posjetitelja);


--
-- Name: staniste staniste_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staniste
    ADD CONSTRAINT staniste_pkey PRIMARY KEY (id_stanista);


--
-- Name: stanje_zaposlenika stanje_zaposlenika_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanje_zaposlenika
    ADD CONSTRAINT stanje_zaposlenika_pkey PRIMARY KEY (id_evidencije);


--
-- Name: stanje_zivotinja stanje_zivotinja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanje_zivotinja
    ADD CONSTRAINT stanje_zivotinja_pkey PRIMARY KEY (id_evidencije_zivotinje);


--
-- Name: zaposlenik zaposlenik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (oib);


--
-- Name: zivotinja zivotinja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_pkey PRIMARY KEY (id_zivotinje);


--
-- Name: posjetitelj_staniste fk_posjetitelj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_posjetitelj FOREIGN KEY ("posjetitelj_ID") REFERENCES public.posjetitelj(id_posjetitelja);


--
-- Name: posjetitelj_staniste fk_staniste; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_staniste FOREIGN KEY ("staniste_ID") REFERENCES public.staniste(id_stanista);


--
-- Name: zaposlenik zaposlenik_id_ev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_id_ev_fkey FOREIGN KEY (id_ev) REFERENCES public.stanje_zaposlenika(id_evidencije);


--
-- Name: zaposlenik_staniste zaposlenik_staniste_id_stan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_id_stan_fkey FOREIGN KEY (id_stan) REFERENCES public.staniste(id_stanista);


--
-- Name: zaposlenik_staniste zaposlenik_staniste_oib_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_oib_fkey FOREIGN KEY (oib) REFERENCES public.zaposlenik(oib);


--
-- Name: zivotinja_hrana zivotinja_hrana_id_ziv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_id_ziv_fkey FOREIGN KEY (id_ziv) REFERENCES public.zivotinja(id_zivotinje);


--
-- Name: zivotinja_hrana zivotinja_hrana_vrsta_hrane_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey FOREIGN KEY (vrsta_hrane) REFERENCES public.hrana(vrsta_hrane);


--
-- Name: zivotinja zivotinja_id_ev_z_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_ev_z_fkey FOREIGN KEY (id_ev_z) REFERENCES public.stanje_zivotinja(id_evidencije_zivotinje);


--
-- Name: zivotinja zivotinja_id_st_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_st_fkey FOREIGN KEY (id_st) REFERENCES public.staniste(id_stanista);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  