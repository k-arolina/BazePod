PGDMP                      |           ZooloskiVrt    15.7    16.3 (    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16398    ZooloskiVrt    DATABASE     �   CREATE DATABASE "ZooloskiVrt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "ZooloskiVrt";
                postgres    false            �            1259    16413    hrana    TABLE     �   CREATE TABLE public.hrana (
    vrsta_hrane character(30) NOT NULL,
    potrosena_kolicina real DEFAULT 0,
    kolicina_za_nabavu real DEFAULT 0,
    cijena real DEFAULT 0,
    trenutna_kolicina real DEFAULT 0
);
    DROP TABLE public.hrana;
       public         heap    postgres    false            �            1259    16439    posjetitelj    TABLE     �   CREATE TABLE public.posjetitelj (
    id_posjetitelja character(10) NOT NULL,
    ime_prezime character(30),
    datum_vrijeme_posjete timestamp without time zone DEFAULT now()
);
    DROP TABLE public.posjetitelj;
       public         heap    postgres    false            �            1259    16532    posjetitelj_staniste    TABLE     r   CREATE TABLE public.posjetitelj_staniste (
    "posjetitelj_ID" character(10),
    "staniste_ID" character(10)
);
 (   DROP TABLE public.posjetitelj_staniste;
       public         heap    postgres    false            �            1259    16427    staniste    TABLE     �   CREATE TABLE public.staniste (
    id_stanista character(10) NOT NULL,
    trenutno_zivotinja real DEFAULT 0,
    max_kapacitet real DEFAULT 0
);
    DROP TABLE public.staniste;
       public         heap    postgres    false            �            1259    16434    stanje_zaposlenika    TABLE     �   CREATE TABLE public.stanje_zaposlenika (
    id_evidencije character(10) NOT NULL,
    datum_vrijeme_dolaska timestamp without time zone,
    datum_vrijeme_odlaska timestamp without time zone
);
 &   DROP TABLE public.stanje_zaposlenika;
       public         heap    postgres    false            �            1259    16422    stanje_zivotinja    TABLE     �   CREATE TABLE public.stanje_zivotinja (
    id_evidencije_zivotinje character(10) NOT NULL,
    datum_dolaska date,
    datum_odlaska date
);
 $   DROP TABLE public.stanje_zivotinja;
       public         heap    postgres    false            �            1259    16460 
   zaposlenik    TABLE     �   CREATE TABLE public.zaposlenik (
    oib character(11) NOT NULL,
    ime_prezime character(30),
    adresa character(35),
    vrsta_posla character(30),
    id_ev character(10)
);
    DROP TABLE public.zaposlenik;
       public         heap    postgres    false            �            1259    16470    zaposlenik_staniste    TABLE     ^   CREATE TABLE public.zaposlenik_staniste (
    id_stan character(10),
    oib character(11)
);
 '   DROP TABLE public.zaposlenik_staniste;
       public         heap    postgres    false            �            1259    16445 	   zivotinja    TABLE     �   CREATE TABLE public.zivotinja (
    id_zivotinje character(5) NOT NULL,
    vrsta character(30),
    ime character(30),
    id_st character(10),
    id_ev_z character(10)
);
    DROP TABLE public.zivotinja;
       public         heap    postgres    false            �            1259    16496    zivotinja_hrana    TABLE     `   CREATE TABLE public.zivotinja_hrana (
    id_ziv character(5),
    vrsta_hrane character(30)
);
 #   DROP TABLE public.zivotinja_hrana;
       public         heap    postgres    false            4          0    16413    hrana 
   TABLE DATA           o   COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM stdin;
    public          postgres    false    214   1       8          0    16439    posjetitelj 
   TABLE DATA           Z   COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM stdin;
    public          postgres    false    218   ]1       =          0    16532    posjetitelj_staniste 
   TABLE DATA           O   COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM stdin;
    public          postgres    false    223   �1       6          0    16427    staniste 
   TABLE DATA           R   COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet) FROM stdin;
    public          postgres    false    216   �1       7          0    16434    stanje_zaposlenika 
   TABLE DATA           i   COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM stdin;
    public          postgres    false    217   2       5          0    16422    stanje_zivotinja 
   TABLE DATA           a   COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM stdin;
    public          postgres    false    215   A2       :          0    16460 
   zaposlenik 
   TABLE DATA           R   COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM stdin;
    public          postgres    false    220   s2       ;          0    16470    zaposlenik_staniste 
   TABLE DATA           ;   COPY public.zaposlenik_staniste (id_stan, oib) FROM stdin;
    public          postgres    false    221   �2       9          0    16445 	   zivotinja 
   TABLE DATA           M   COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM stdin;
    public          postgres    false    219   �2       <          0    16496    zivotinja_hrana 
   TABLE DATA           >   COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM stdin;
    public          postgres    false    222   '3       �           2606    16421    hrana hrana_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.hrana
    ADD CONSTRAINT hrana_pkey PRIMARY KEY (vrsta_hrane);
 :   ALTER TABLE ONLY public.hrana DROP CONSTRAINT hrana_pkey;
       public            postgres    false    214            �           2606    16444    posjetitelj posjetitelj_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.posjetitelj
    ADD CONSTRAINT posjetitelj_pkey PRIMARY KEY (id_posjetitelja);
 F   ALTER TABLE ONLY public.posjetitelj DROP CONSTRAINT posjetitelj_pkey;
       public            postgres    false    218            �           2606    16433    staniste staniste_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.staniste
    ADD CONSTRAINT staniste_pkey PRIMARY KEY (id_stanista);
 @   ALTER TABLE ONLY public.staniste DROP CONSTRAINT staniste_pkey;
       public            postgres    false    216            �           2606    16438 *   stanje_zaposlenika stanje_zaposlenika_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.stanje_zaposlenika
    ADD CONSTRAINT stanje_zaposlenika_pkey PRIMARY KEY (id_evidencije);
 T   ALTER TABLE ONLY public.stanje_zaposlenika DROP CONSTRAINT stanje_zaposlenika_pkey;
       public            postgres    false    217            �           2606    16426 &   stanje_zivotinja stanje_zivotinja_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.stanje_zivotinja
    ADD CONSTRAINT stanje_zivotinja_pkey PRIMARY KEY (id_evidencije_zivotinje);
 P   ALTER TABLE ONLY public.stanje_zivotinja DROP CONSTRAINT stanje_zivotinja_pkey;
       public            postgres    false    215            �           2606    16464    zaposlenik zaposlenik_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (oib);
 D   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_pkey;
       public            postgres    false    220            �           2606    16449    zivotinja zivotinja_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_pkey PRIMARY KEY (id_zivotinje);
 B   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_pkey;
       public            postgres    false    219            �           2606    16535 #   posjetitelj_staniste fk_posjetitelj    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_posjetitelj FOREIGN KEY ("posjetitelj_ID") REFERENCES public.posjetitelj(id_posjetitelja);
 M   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_posjetitelj;
       public          postgres    false    218    223    3224            �           2606    16540     posjetitelj_staniste fk_staniste    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_staniste FOREIGN KEY ("staniste_ID") REFERENCES public.staniste(id_stanista);
 J   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_staniste;
       public          postgres    false    216    223    3220            �           2606    16465     zaposlenik zaposlenik_id_ev_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_id_ev_fkey FOREIGN KEY (id_ev) REFERENCES public.stanje_zaposlenika(id_evidencije);
 J   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_id_ev_fkey;
       public          postgres    false    220    217    3222            �           2606    16473 4   zaposlenik_staniste zaposlenik_staniste_id_stan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_id_stan_fkey FOREIGN KEY (id_stan) REFERENCES public.staniste(id_stanista);
 ^   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_id_stan_fkey;
       public          postgres    false    216    3220    221            �           2606    16478 0   zaposlenik_staniste zaposlenik_staniste_oib_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_oib_fkey FOREIGN KEY (oib) REFERENCES public.zaposlenik(oib);
 Z   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_oib_fkey;
       public          postgres    false    221    3228    220            �           2606    16499 +   zivotinja_hrana zivotinja_hrana_id_ziv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_id_ziv_fkey FOREIGN KEY (id_ziv) REFERENCES public.zivotinja(id_zivotinje);
 U   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_id_ziv_fkey;
       public          postgres    false    3226    222    219            �           2606    16504 0   zivotinja_hrana zivotinja_hrana_vrsta_hrane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey FOREIGN KEY (vrsta_hrane) REFERENCES public.hrana(vrsta_hrane);
 Z   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey;
       public          postgres    false    222    214    3216            �           2606    16455     zivotinja zivotinja_id_ev_z_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_ev_z_fkey FOREIGN KEY (id_ev_z) REFERENCES public.stanje_zivotinja(id_evidencije_zivotinje);
 J   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_ev_z_fkey;
       public          postgres    false    219    215    3218            �           2606    16450    zivotinja zivotinja_id_st_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_st_fkey FOREIGN KEY (id_st) REFERENCES public.staniste(id_stanista);
 H   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_st_fkey;
       public          postgres    false    3220    216    219            4   2   x�.�K��.J-�/KU(�J�M��NU�N#NcN=SNcS�=... ��1      8   P   x���07351624��,K�S��,�LV�8��Lt�t�M�������������;Q! �v�nC�nC��=... ���      =      x������ � �      6      x��07351624��4�4����� &�>      7   +   x���T�N##]S]##+ B34��q��qqq ^	�      5   "   x�34�#N#C]02�Mu���+F��� �w      :   D   x�3426153��40��,K�S����LV�8��u�r2K�) �q��M,�!	����1�b���� Q]�      ;      x������ � �      9   3   x�34261���K/��S����8$���f�&�F����0`����� [��      <   +   x�34261�.�K��.J-�/KU(�J�M��NU��=... ~U     