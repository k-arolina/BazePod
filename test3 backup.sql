PGDMP  *                    |           test    16.3    16.3 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16489    test    DATABASE     x   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Europe.1252';
    DROP DATABASE test;
                postgres    false            �            1259    16490    hrana    TABLE     �   CREATE TABLE public.hrana (
    vrsta_hrane character(30) NOT NULL,
    potrosena_kolicina real DEFAULT 0,
    kolicina_za_nabavu real DEFAULT 0,
    cijena real DEFAULT 0,
    trenutna_kolicina real DEFAULT 0
);
    DROP TABLE public.hrana;
       public         heap    postgres    false            �            1259    16497    posjetitelj    TABLE     �   CREATE TABLE public.posjetitelj (
    id_posjetitelja character(10) NOT NULL,
    ime_prezime character(30),
    datum_vrijeme_posjete timestamp without time zone DEFAULT now()
);
    DROP TABLE public.posjetitelj;
       public         heap    postgres    false            �            1259    16501    posjetitelj_staniste    TABLE     r   CREATE TABLE public.posjetitelj_staniste (
    "posjetitelj_ID" character(10),
    "staniste_ID" character(10)
);
 (   DROP TABLE public.posjetitelj_staniste;
       public         heap    postgres    false            �            1259    16504    staniste    TABLE     �   CREATE TABLE public.staniste (
    id_stanista character(10) NOT NULL,
    trenutno_zivotinja real DEFAULT 0,
    max_kapacitet real DEFAULT 0,
    ime_stanista character(30)
);
    DROP TABLE public.staniste;
       public         heap    postgres    false            �            1259    16509    stanje_zaposlenika    TABLE     �   CREATE TABLE public.stanje_zaposlenika (
    id_evidencije character(10) NOT NULL,
    datum_vrijeme_dolaska timestamp without time zone,
    datum_vrijeme_odlaska timestamp without time zone
);
 &   DROP TABLE public.stanje_zaposlenika;
       public         heap    postgres    false            �            1259    16512    stanje_zivotinja    TABLE     �   CREATE TABLE public.stanje_zivotinja (
    id_evidencije_zivotinje character(10) NOT NULL,
    datum_dolaska date,
    datum_odlaska date
);
 $   DROP TABLE public.stanje_zivotinja;
       public         heap    postgres    false            �            1259    16515 
   zaposlenik    TABLE     �   CREATE TABLE public.zaposlenik (
    oib character(11) NOT NULL,
    ime_prezime character(30),
    adresa character(35),
    vrsta_posla character(30),
    id_ev character(10)
);
    DROP TABLE public.zaposlenik;
       public         heap    postgres    false            �            1259    16518    zaposlenik_staniste    TABLE     ^   CREATE TABLE public.zaposlenik_staniste (
    id_stan character(10),
    oib character(11)
);
 '   DROP TABLE public.zaposlenik_staniste;
       public         heap    postgres    false            �            1259    16521 	   zivotinja    TABLE     �   CREATE TABLE public.zivotinja (
    id_zivotinje character(5) NOT NULL,
    vrsta character(30),
    ime character(30),
    id_st character(10),
    id_ev_z character(10)
);
    DROP TABLE public.zivotinja;
       public         heap    postgres    false            �            1259    16524    zivotinja_hrana    TABLE     `   CREATE TABLE public.zivotinja_hrana (
    id_ziv character(5),
    vrsta_hrane character(30)
);
 #   DROP TABLE public.zivotinja_hrana;
       public         heap    postgres    false            �          0    16490    hrana 
   TABLE DATA           o   COPY public.hrana (vrsta_hrane, potrosena_kolicina, kolicina_za_nabavu, cijena, trenutna_kolicina) FROM stdin;
    public          postgres    false    215   !1       �          0    16497    posjetitelj 
   TABLE DATA           Z   COPY public.posjetitelj (id_posjetitelja, ime_prezime, datum_vrijeme_posjete) FROM stdin;
    public          postgres    false    216   �1       �          0    16501    posjetitelj_staniste 
   TABLE DATA           O   COPY public.posjetitelj_staniste ("posjetitelj_ID", "staniste_ID") FROM stdin;
    public          postgres    false    217   P2       �          0    16504    staniste 
   TABLE DATA           `   COPY public.staniste (id_stanista, trenutno_zivotinja, max_kapacitet, ime_stanista) FROM stdin;
    public          postgres    false    218   �2       �          0    16509    stanje_zaposlenika 
   TABLE DATA           i   COPY public.stanje_zaposlenika (id_evidencije, datum_vrijeme_dolaska, datum_vrijeme_odlaska) FROM stdin;
    public          postgres    false    219   3       �          0    16512    stanje_zivotinja 
   TABLE DATA           a   COPY public.stanje_zivotinja (id_evidencije_zivotinje, datum_dolaska, datum_odlaska) FROM stdin;
    public          postgres    false    220   �3       �          0    16515 
   zaposlenik 
   TABLE DATA           R   COPY public.zaposlenik (oib, ime_prezime, adresa, vrsta_posla, id_ev) FROM stdin;
    public          postgres    false    221   4       �          0    16518    zaposlenik_staniste 
   TABLE DATA           ;   COPY public.zaposlenik_staniste (id_stan, oib) FROM stdin;
    public          postgres    false    222   �4       �          0    16521 	   zivotinja 
   TABLE DATA           M   COPY public.zivotinja (id_zivotinje, vrsta, ime, id_st, id_ev_z) FROM stdin;
    public          postgres    false    223   5       �          0    16524    zivotinja_hrana 
   TABLE DATA           >   COPY public.zivotinja_hrana (id_ziv, vrsta_hrane) FROM stdin;
    public          postgres    false    224   �5       E           2606    16528    hrana hrana_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.hrana
    ADD CONSTRAINT hrana_pkey PRIMARY KEY (vrsta_hrane);
 :   ALTER TABLE ONLY public.hrana DROP CONSTRAINT hrana_pkey;
       public            postgres    false    215            G           2606    16530    posjetitelj posjetitelj_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.posjetitelj
    ADD CONSTRAINT posjetitelj_pkey PRIMARY KEY (id_posjetitelja);
 F   ALTER TABLE ONLY public.posjetitelj DROP CONSTRAINT posjetitelj_pkey;
       public            postgres    false    216            I           2606    16532    staniste staniste_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.staniste
    ADD CONSTRAINT staniste_pkey PRIMARY KEY (id_stanista);
 @   ALTER TABLE ONLY public.staniste DROP CONSTRAINT staniste_pkey;
       public            postgres    false    218            K           2606    16534 *   stanje_zaposlenika stanje_zaposlenika_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.stanje_zaposlenika
    ADD CONSTRAINT stanje_zaposlenika_pkey PRIMARY KEY (id_evidencije);
 T   ALTER TABLE ONLY public.stanje_zaposlenika DROP CONSTRAINT stanje_zaposlenika_pkey;
       public            postgres    false    219            M           2606    16536 &   stanje_zivotinja stanje_zivotinja_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.stanje_zivotinja
    ADD CONSTRAINT stanje_zivotinja_pkey PRIMARY KEY (id_evidencije_zivotinje);
 P   ALTER TABLE ONLY public.stanje_zivotinja DROP CONSTRAINT stanje_zivotinja_pkey;
       public            postgres    false    220            O           2606    16538    zaposlenik zaposlenik_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (oib);
 D   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_pkey;
       public            postgres    false    221            Q           2606    16540    zivotinja zivotinja_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_pkey PRIMARY KEY (id_zivotinje);
 B   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_pkey;
       public            postgres    false    223            R           2606    16541 #   posjetitelj_staniste fk_posjetitelj    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_posjetitelj FOREIGN KEY ("posjetitelj_ID") REFERENCES public.posjetitelj(id_posjetitelja);
 M   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_posjetitelj;
       public          postgres    false    216    217    4679            S           2606    16546     posjetitelj_staniste fk_staniste    FK CONSTRAINT     �   ALTER TABLE ONLY public.posjetitelj_staniste
    ADD CONSTRAINT fk_staniste FOREIGN KEY ("staniste_ID") REFERENCES public.staniste(id_stanista);
 J   ALTER TABLE ONLY public.posjetitelj_staniste DROP CONSTRAINT fk_staniste;
       public          postgres    false    217    4681    218            T           2606    16551     zaposlenik zaposlenik_id_ev_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_id_ev_fkey FOREIGN KEY (id_ev) REFERENCES public.stanje_zaposlenika(id_evidencije);
 J   ALTER TABLE ONLY public.zaposlenik DROP CONSTRAINT zaposlenik_id_ev_fkey;
       public          postgres    false    219    4683    221            U           2606    16556 4   zaposlenik_staniste zaposlenik_staniste_id_stan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_id_stan_fkey FOREIGN KEY (id_stan) REFERENCES public.staniste(id_stanista);
 ^   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_id_stan_fkey;
       public          postgres    false    222    218    4681            V           2606    16561 0   zaposlenik_staniste zaposlenik_staniste_oib_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zaposlenik_staniste
    ADD CONSTRAINT zaposlenik_staniste_oib_fkey FOREIGN KEY (oib) REFERENCES public.zaposlenik(oib);
 Z   ALTER TABLE ONLY public.zaposlenik_staniste DROP CONSTRAINT zaposlenik_staniste_oib_fkey;
       public          postgres    false    221    222    4687            Y           2606    16566 +   zivotinja_hrana zivotinja_hrana_id_ziv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_id_ziv_fkey FOREIGN KEY (id_ziv) REFERENCES public.zivotinja(id_zivotinje);
 U   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_id_ziv_fkey;
       public          postgres    false    224    4689    223            Z           2606    16571 0   zivotinja_hrana zivotinja_hrana_vrsta_hrane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja_hrana
    ADD CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey FOREIGN KEY (vrsta_hrane) REFERENCES public.hrana(vrsta_hrane);
 Z   ALTER TABLE ONLY public.zivotinja_hrana DROP CONSTRAINT zivotinja_hrana_vrsta_hrane_fkey;
       public          postgres    false    224    4677    215            W           2606    16576     zivotinja zivotinja_id_ev_z_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_ev_z_fkey FOREIGN KEY (id_ev_z) REFERENCES public.stanje_zivotinja(id_evidencije_zivotinje);
 J   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_ev_z_fkey;
       public          postgres    false    220    223    4685            X           2606    16581    zivotinja zivotinja_id_st_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.zivotinja
    ADD CONSTRAINT zivotinja_id_st_fkey FOREIGN KEY (id_st) REFERENCES public.staniste(id_stanista);
 H   ALTER TABLE ONLY public.zivotinja DROP CONSTRAINT zivotinja_id_st_fkey;
       public          postgres    false    4681    223    218            �   |   x�}��!�_�\p%��6�� n��DN�_(��9�d2�גjy�Z�jڬ]��/p��I��Nڪ��;�@�|�\'p�w��cnIM,1�Y]�+������p/�ǈ��t����B)g      �   �   x�}�A
�0�us��@��$�:�.�<���*
Dz~'V�`u�$��8R�f�o��Y��=�@�G�����I��~�C�}�i��ĭ�0�q������Ic^ͯ唩^~n� l5K��>ug��ay�g�wP$�;��sw:�      �   N   x�34004Q N042�2D5261��a�0&,
3M���Y��������� $jhb�M���h�`7��qqq R�$�      �   \   x�}�;� E���
W`�D�b3��Ј�~��x�K����B�\��*�>��:8̱�i��WS��|.��[�8kXS ����m(�VJݯ� �      �   ^   x�u���0D�e�.Pע�,�?�hS5^�z���,�L`�̚�ě3ǍL��H� K(��yՑ�9���?e��Ci- կRz�=�b����Dt ��$'      �   z   x�u�AC!�u��~�z����e�D�c O�� ���+,Z���m������� `&h�k#��0v�����F�CqEX+0Tq��=��^� ��¿��r��SDރa6A      �   �   x�3426153��40��,K�S����LV�8��u�r2K�) �q��M,�!	����1��q�d��+ 	
,K-I-���a9��!�M9�V&*8���5�	��@��S��H��bZlh��Z�� $(��@P��-����� � Y      �   D   x�30 C#cN 6153��40�2�&l�]�&lii�6��	banfjbldh`IXؐ+F��� ��"�      �   �   x���M
�0���=�������7Ak�bZ���MG����k�|<�GyQ��9og��֣v�yT��C��GR�vX%S�|��3���&��$�l��*��P�3#gnR�f���]ԋ�Z3˙2h�����>.�LI����O�;��n2W�mX�t7>d�;�&%�rbA~�.ٍ�;��F�C�O�����z      �   p   x�34261�.�K��.J-�/KU(�J�M��NU�.C#cKsN����T������,�$�"3br���cȡ*2 B��9gPfR"Ef�(2%F��d@�"��t8�b���� P`�     