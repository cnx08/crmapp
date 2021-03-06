PGDMP     '                    u            crmapp    9.5.6    9.5.6 ,    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            k           1262    16384    crmapp    DATABASE     �   CREATE DATABASE crmapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE crmapp;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            l           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            m           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            n           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16392    customer    TABLE     y   CREATE TABLE customer (
    id integer NOT NULL,
    name character varying(255),
    birth_date date,
    notes text
);
    DROP TABLE public.customer;
       public         postgres    false    6            �            1259    16390    customer_id_seq    SEQUENCE     q   CREATE SEQUENCE customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public       postgres    false    183    6            o           0    0    customer_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE customer_id_seq OWNED BY customer.id;
            public       postgres    false    182            �            1259    16385 	   migration    TABLE     `   CREATE TABLE migration (
    version character varying(180) NOT NULL,
    apply_time integer
);
    DROP TABLE public.migration;
       public         postgres    false    6            �            1259    16403    phone    TABLE     l   CREATE TABLE phone (
    id integer NOT NULL,
    customer_id integer,
    number character varying(255)
);
    DROP TABLE public.phone;
       public         postgres    false    6            �            1259    16401    phone_id_seq    SEQUENCE     n   CREATE SEQUENCE phone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.phone_id_seq;
       public       postgres    false    185    6            p           0    0    phone_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE phone_id_seq OWNED BY phone.id;
            public       postgres    false    184            �            1259    16418    service    TABLE     l   CREATE TABLE service (
    id integer NOT NULL,
    name character varying(255),
    hourly_rate integer
);
    DROP TABLE public.service;
       public         postgres    false    6            �            1259    16416    service_id_seq    SEQUENCE     p   CREATE SEQUENCE service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.service_id_seq;
       public       postgres    false    187    6            q           0    0    service_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE service_id_seq OWNED BY service.id;
            public       postgres    false    186            �            1259    16438    user    TABLE     �   CREATE TABLE "user" (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    auth_key character varying(255)
);
    DROP TABLE public."user";
       public         postgres    false    6            �            1259    16436    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    189    6            r           0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       postgres    false    188            �           2604    16395    id    DEFAULT     \   ALTER TABLE ONLY customer ALTER COLUMN id SET DEFAULT nextval('customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182    183            �           2604    16406    id    DEFAULT     V   ALTER TABLE ONLY phone ALTER COLUMN id SET DEFAULT nextval('phone_id_seq'::regclass);
 7   ALTER TABLE public.phone ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    185    185            �           2604    16421    id    DEFAULT     Z   ALTER TABLE ONLY service ALTER COLUMN id SET DEFAULT nextval('service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186    187            �           2604    16441    id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    189    189            `          0    16392    customer 
   TABLE DATA               8   COPY customer (id, name, birth_date, notes) FROM stdin;
    public       postgres    false    183   N*       s           0    0    customer_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('customer_id_seq', 6, true);
            public       postgres    false    182            ^          0    16385 	   migration 
   TABLE DATA               1   COPY migration (version, apply_time) FROM stdin;
    public       postgres    false    181   �+       b          0    16403    phone 
   TABLE DATA               1   COPY phone (id, customer_id, number) FROM stdin;
    public       postgres    false    185   C,       t           0    0    phone_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('phone_id_seq', 6, true);
            public       postgres    false    184            d          0    16418    service 
   TABLE DATA               1   COPY service (id, name, hourly_rate) FROM stdin;
    public       postgres    false    187   �,       u           0    0    service_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('service_id_seq', 24, true);
            public       postgres    false    186            f          0    16438    user 
   TABLE DATA               ;   COPY "user" (id, username, password, auth_key) FROM stdin;
    public       postgres    false    189   .       v           0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 6, true);
            public       postgres    false    188            �           2606    16400    customer_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    183    183            �           2606    16389    migration_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY migration
    ADD CONSTRAINT migration_pkey PRIMARY KEY (version);
 B   ALTER TABLE ONLY public.migration DROP CONSTRAINT migration_pkey;
       public         postgres    false    181    181            �           2606    16410    phone_customer_id_key 
   CONSTRAINT     V   ALTER TABLE ONLY phone
    ADD CONSTRAINT phone_customer_id_key UNIQUE (customer_id);
 E   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_customer_id_key;
       public         postgres    false    185    185            �           2606    16408 
   phone_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_pkey;
       public         postgres    false    185    185            �           2606    16425    service_name_key 
   CONSTRAINT     L   ALTER TABLE ONLY service
    ADD CONSTRAINT service_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.service DROP CONSTRAINT service_name_key;
       public         postgres    false    187    187            �           2606    16423    service_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public         postgres    false    187    187            �           2606    16450    user_auth_key_key 
   CONSTRAINT     P   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_auth_key_key UNIQUE (auth_key);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_auth_key_key;
       public         postgres    false    189    189            �           2606    16446 	   user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    189    189            �           2606    16448    user_username_key 
   CONSTRAINT     P   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public         postgres    false    189    189            �           2606    16411    customer_phone_numbers    FK CONSTRAINT     t   ALTER TABLE ONLY phone
    ADD CONSTRAINT customer_phone_numbers FOREIGN KEY (customer_id) REFERENCES customer(id);
 F   ALTER TABLE ONLY public.phone DROP CONSTRAINT customer_phone_numbers;
       public       postgres    false    183    2012    185            `   C  x�=��J1���S�v�]u��
�
^�dg;M7m}{S����~_���`>U�\ȍ}����fܹ{�0I�4*U!#%<ZP�(gPҺ��,J�NU�-P.�V]K�GW�٤�&�gឈ`g�,�%wC����ꙋ��I8���_�}D��,���،7����A��I'k-,�L�¿�Se8K�ɲH��m����Xs��s�C]Rx�p��k�6�ڡ�a� F�EYb�Ǌ΅`�!!�N��H�����CU��[�/������[�f^������޲Jq�ǀq���A��gME )R�X�����������      ^   �   x�m�M
�0�9���4I�"<�6Тm�Ioo�@@�Y�b�>�:���ڙ���Z�R�-�f�ےd�1�k8$���4wM;��>�[���R+����1�e�f"Ab��չ�bz@gйjX��G-~���4�5<%퍓Ֆ@]�J�5bF�      b   [   x����0���
=m"��!����y��p�Ͻ*Ϟ���Lq8>���fGuI p���xfOv��1$���l�O�B�YJ�~-?�7Z7      d   E  x�E��n�0���S�	�{�T��T��S/&�]K��$Y���,�zA�x<�5<{�w���יw�&���x��H��F^6���%
�la�ٜX���>�b8D�E�uk�wYO5���OT�?�����-������gg�������ܒ���"��ҞC�l��tX�pa�`�Zb�Z�\c�P��*̼����L�5|<��a��xV��^��sB��t��t`�si)�|�*�YY��Q�+o���(T��+���FuӬ9��/�.�O�-�)��_g�Xgƕc����Z�#�*{����}h�n�='�J�BZ�����B�]      f   �  x�=�I��@ ��5�õ�@2,AA�ĨM�$6��T%H��Ê�/��/����q����n��ݍ����bhv\u����U�ɰN����7��#�3]F��h��6"+��
ĕ��X\@�P��,�w���F�[ͳ�d�U��Oᝬ��O���X�*�m�P�/	�FͳWB�fҽ���^�x�"�e�2eFܣ�����a4^�~���љSb�ؿ������3h�:HQ_~��nA�>Nx��H�o�}g%O�@,�������E(c�o6���KL�o�b`���9.ㆰ�O�W�2��]"�,h��\5�e��\g��)��c�d	)PA@R�R��* WX�K���儱A�	�����sh�;|8�"7}�Mu�P���:�&>w���9��     