PGDMP                         {            postgres    9.5.14    9.5.14 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    12379    postgres    DATABASE     x   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE postgres;
             postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2287                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    7                        3079    12361    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16384    account_user    TABLE     �  CREATE TABLE public.account_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
     DROP TABLE public.account_user;
       public         postgres    false    7            �            1259    16390    account_user_groups    TABLE     �   CREATE TABLE public.account_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE public.account_user_groups;
       public         postgres    false    7            �            1259    16393    account_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.account_user_groups_id_seq;
       public       postgres    false    182    7            �           0    0    account_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;
            public       postgres    false    183            �            1259    16395    account_user_id_seq    SEQUENCE     |   CREATE SEQUENCE public.account_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.account_user_id_seq;
       public       postgres    false    7    181            �           0    0    account_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;
            public       postgres    false    184            �            1259    16397    account_user_user_permissions    TABLE     �   CREATE TABLE public.account_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE public.account_user_user_permissions;
       public         postgres    false    7            �            1259    16400 $   account_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.account_user_user_permissions_id_seq;
       public       postgres    false    7    185            �           0    0 $   account_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;
            public       postgres    false    186            �            1259    16402 	   api_board    TABLE     �   CREATE TABLE public.api_board (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.api_board;
       public         postgres    false    7            �            1259    16405    api_board_id_seq    SEQUENCE     y   CREATE SEQUENCE public.api_board_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.api_board_id_seq;
       public       postgres    false    7    187            �           0    0    api_board_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.api_board_id_seq OWNED BY public.api_board.id;
            public       postgres    false    188            �            1259    16407    api_card    TABLE     �   CREATE TABLE public.api_card (
    id integer NOT NULL,
    task text NOT NULL,
    column_id integer NOT NULL,
    position_id integer NOT NULL
);
    DROP TABLE public.api_card;
       public         postgres    false    7            �            1259    16413    api_card_id_seq    SEQUENCE     x   CREATE SEQUENCE public.api_card_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_card_id_seq;
       public       postgres    false    189    7            �           0    0    api_card_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.api_card_id_seq OWNED BY public.api_card.id;
            public       postgres    false    190            �            1259    16415 
   api_column    TABLE     �   CREATE TABLE public.api_column (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    board_id integer NOT NULL,
    position_id integer NOT NULL
);
    DROP TABLE public.api_column;
       public         postgres    false    7            �            1259    16418    api_column_id_seq    SEQUENCE     z   CREATE SEQUENCE public.api_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_column_id_seq;
       public       postgres    false    7    191            �           0    0    api_column_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_column_id_seq OWNED BY public.api_column.id;
            public       postgres    false    192            �            1259    16420 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    7            �            1259    16423    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    7    193            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    194            �            1259    16425    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    7            �            1259    16428    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    195    7            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    196            �            1259    16430    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    7            �            1259    16433    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    7    197            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    198            �            1259    16435    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    7            �            1259    16442    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    7    199            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    200            �            1259    16444    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    7            �            1259    16447    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    7    201            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    202            �            1259    16449    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    7            �            1259    16455    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    203    7            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    204            �            1259    16457    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    7                       2604    16463    id    DEFAULT     r   ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);
 >   ALTER TABLE public.account_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    181                       2604    16464    id    DEFAULT     �   ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);
 E   ALTER TABLE public.account_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182                       2604    16465    id    DEFAULT     �   ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);
 O   ALTER TABLE public.account_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185                       2604    16466    id    DEFAULT     l   ALTER TABLE ONLY public.api_board ALTER COLUMN id SET DEFAULT nextval('public.api_board_id_seq'::regclass);
 ;   ALTER TABLE public.api_board ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187                       2604    16467    id    DEFAULT     j   ALTER TABLE ONLY public.api_card ALTER COLUMN id SET DEFAULT nextval('public.api_card_id_seq'::regclass);
 :   ALTER TABLE public.api_card ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189                       2604    16468    id    DEFAULT     n   ALTER TABLE ONLY public.api_column ALTER COLUMN id SET DEFAULT nextval('public.api_column_id_seq'::regclass);
 <   ALTER TABLE public.api_column ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191                       2604    16469    id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193                       2604    16470    id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195                       2604    16471    id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197                       2604    16472    id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199                       2604    16473    id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201                       2604    16474    id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �          0    16384    account_user 
   TABLE DATA               �   COPY public.account_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    181   �       �          0    16390    account_user_groups 
   TABLE DATA               D   COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    182   �        	           0    0    account_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);
            public       postgres    false    183            	           0    0    account_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.account_user_id_seq', 2, true);
            public       postgres    false    184            �          0    16397    account_user_user_permissions 
   TABLE DATA               S   COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    185   -�       	           0    0 $   account_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);
            public       postgres    false    186            �          0    16402 	   api_board 
   TABLE DATA               6   COPY public.api_board (id, name, user_id) FROM stdin;
    public       postgres    false    187   J�       	           0    0    api_board_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.api_board_id_seq', 1, true);
            public       postgres    false    188            �          0    16407    api_card 
   TABLE DATA               D   COPY public.api_card (id, task, column_id, position_id) FROM stdin;
    public       postgres    false    189   w�       	           0    0    api_card_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.api_card_id_seq', 3, true);
            public       postgres    false    190            �          0    16415 
   api_column 
   TABLE DATA               E   COPY public.api_column (id, name, board_id, position_id) FROM stdin;
    public       postgres    false    191   ��       	           0    0    api_column_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.api_column_id_seq', 3, true);
            public       postgres    false    192            �          0    16420 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    193   ٦       	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    194            �          0    16425    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    195   ��       	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    196            �          0    16430    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    197   �       	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       postgres    false    198            �          0    16435    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    199   ��       		           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    200            �          0    16444    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    201   ��       
	           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       postgres    false    202            �          0    16449    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    203   (�       	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
            public       postgres    false    204            �          0    16457    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    205   ߪ                   2606    16476    account_user_groups_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_pkey;
       public         postgres    false    182    182            #           2606    16478 2   account_user_groups_user_id_group_id_4d09af3e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);
 p   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq;
       public         postgres    false    182    182    182                       2606    16480    account_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.account_user DROP CONSTRAINT account_user_pkey;
       public         postgres    false    181    181            %           2606    16482 <   account_user_user_permis_user_id_permission_id_48bdd28b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq;
       public         postgres    false    185    185    185            (           2606    16484 "   account_user_user_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_permissions_pkey;
       public         postgres    false    185    185                       2606    16486    account_user_username_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_username_key UNIQUE (username);
 P   ALTER TABLE ONLY public.account_user DROP CONSTRAINT account_user_username_key;
       public         postgres    false    181    181            +           2606    16488    api_board_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.api_board
    ADD CONSTRAINT api_board_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.api_board DROP CONSTRAINT api_board_pkey;
       public         postgres    false    187    187            /           2606    16490    api_card_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.api_card
    ADD CONSTRAINT api_card_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.api_card DROP CONSTRAINT api_card_pkey;
       public         postgres    false    189    189            2           2606    16492 -   api_column_board_id_position_id_f7106898_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_column
    ADD CONSTRAINT api_column_board_id_position_id_f7106898_uniq UNIQUE (board_id, position_id);
 b   ALTER TABLE ONLY public.api_column DROP CONSTRAINT api_column_board_id_position_id_f7106898_uniq;
       public         postgres    false    191    191    191            4           2606    16494    api_column_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_column
    ADD CONSTRAINT api_column_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_column DROP CONSTRAINT api_column_pkey;
       public         postgres    false    191    191            7           2606    16496    auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    193    193            <           2606    16498 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    195    195    195            ?           2606    16500    auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    195    195            9           2606    16502    auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    193    193            B           2606    16504 6   auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    197    197    197            D           2606    16506    auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    197    197            G           2606    16508    django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    199    199            J           2606    16510 1   django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    201    201    201            L           2606    16512    django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    201    201            N           2606    16514    django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    203    203            Q           2606    16516    django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    205    205                       1259    16517 %   account_user_groups_group_id_6c71f749    INDEX     i   CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);
 9   DROP INDEX public.account_user_groups_group_id_6c71f749;
       public         postgres    false    182            !           1259    16518 $   account_user_groups_user_id_14345e7b    INDEX     g   CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);
 8   DROP INDEX public.account_user_groups_user_id_14345e7b;
       public         postgres    false    182            &           1259    16519 4   account_user_user_permissions_permission_id_66c44191    INDEX     �   CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);
 H   DROP INDEX public.account_user_user_permissions_permission_id_66c44191;
       public         postgres    false    185            )           1259    16520 .   account_user_user_permissions_user_id_cc42d270    INDEX     {   CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);
 B   DROP INDEX public.account_user_user_permissions_user_id_cc42d270;
       public         postgres    false    185                       1259    16521 #   account_user_username_d393f583_like    INDEX     t   CREATE INDEX account_user_username_d393f583_like ON public.account_user USING btree (username varchar_pattern_ops);
 7   DROP INDEX public.account_user_username_d393f583_like;
       public         postgres    false    181            ,           1259    16522    api_board_user_id_a85b4ce5    INDEX     S   CREATE INDEX api_board_user_id_a85b4ce5 ON public.api_board USING btree (user_id);
 .   DROP INDEX public.api_board_user_id_a85b4ce5;
       public         postgres    false    187            -           1259    16523    api_card_column_id_1b37023d    INDEX     U   CREATE INDEX api_card_column_id_1b37023d ON public.api_card USING btree (column_id);
 /   DROP INDEX public.api_card_column_id_1b37023d;
       public         postgres    false    189            0           1259    16524    api_column_board_id_8c53436d    INDEX     W   CREATE INDEX api_column_board_id_8c53436d ON public.api_column USING btree (board_id);
 0   DROP INDEX public.api_column_board_id_8c53436d;
       public         postgres    false    191            5           1259    16525    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    193            :           1259    16526 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    195            =           1259    16527 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    195            @           1259    16528 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    197            E           1259    16529 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    199            H           1259    16530 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    199            O           1259    16531 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    205            R           1259    16532 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    205            S           2606    16533 6   account_user_groups_group_id_6c71f749_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id;
       public       postgres    false    182    193    2105            T           2606    16538 7   account_user_groups_user_id_14345e7b_fk_account_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id;
       public       postgres    false    2074    181    182            U           2606    16543 8   account_user_user_pe_permission_id_66c44191_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm;
       public       postgres    false    2116    185    197            V           2606    16548 2   account_user_user_pe_user_id_cc42d270_fk_account_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u;
       public       postgres    false    2074    185    181            W           2606    16553 -   api_board_user_id_a85b4ce5_fk_account_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_board
    ADD CONSTRAINT api_board_user_id_a85b4ce5_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.api_board DROP CONSTRAINT api_board_user_id_a85b4ce5_fk_account_user_id;
       public       postgres    false    187    181    2074            X           2606    16558 ,   api_card_column_id_1b37023d_fk_api_column_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_card
    ADD CONSTRAINT api_card_column_id_1b37023d_fk_api_column_id FOREIGN KEY (column_id) REFERENCES public.api_column(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.api_card DROP CONSTRAINT api_card_column_id_1b37023d_fk_api_column_id;
       public       postgres    false    2100    189    191            Y           2606    16563 ,   api_column_board_id_8c53436d_fk_api_board_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_column
    ADD CONSTRAINT api_column_board_id_8c53436d_fk_api_board_id FOREIGN KEY (board_id) REFERENCES public.api_board(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.api_column DROP CONSTRAINT api_column_board_id_8c53436d_fk_api_board_id;
       public       postgres    false    187    2091    191            Z           2606    16568 8   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    195    2116    197            [           2606    16573 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    195    2105    193            \           2606    16578 5   auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2124    197    201            ]           2606    16583 6   django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2124    199    201            ^           2606    16588 4   django_admin_log_user_id_c564eba6_fk_account_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id;
       public       postgres    false    181    199    2074            �   �   x�u�Ao�0��s�;p#���J�D��'�0���P&v��~.˒�s����A��CV���K`�� ��\�T/cZm��y�E��V:"��࣡z�r���l�}&y7I��D�J����U��r�Km��/�	��n�����Qfg�2c�7ц�:6�g��E�G����~����
Ӑ�	���A�uGJFL�M�����,�+"�<�mJ(��-�؆a|��S]      �      x������ � �      �      x������ � �      �      x�3��N�KJ�S(I-.�4����� EFr      �   "   x�3�L�4�4�2�L�4�Ɯɜ�@:F��� >��      �       x�3�4B.#N#�˘�Hq��qqq 3�j      �      x������ � �      �      x������ � �      �   h  x�]�]n�0��Sp�*�@�s���`�H	 ~Z�����]��ݑ<B�3�͐5]�=�>��:��3����NW���4C�Fv��W��g��Oa���2�M~~ޗ�>&'5�J�)v��H?�BP�WVT$9
�N��<n�)H��֝�\����N���U"@Xɠ������5ys&���ug�s�a��R�x(*�b�M���$�Ňo[�0n�]�,3�LX-�^���1DV	q�h[�l*�ُ6W �	�*  �ǚK.�{l��\�i:�\�x��:"x��9$�5W���khg_�alc,���:�br�����=S���b�C� R�:t
( 'dI���Z�z��      �      x������ � �      �   p   x�M�K�0е�0H��.lL�H��΢�/�B���h�H<�"4�%lƉ�ǇZ�Z܋
�[3���%��Ncn��W�>�܈S�.Aݳ�N�
��m�cu��Q�^��B 1�      �   �  x���ݎ� �����}�+����,�rh	��������Q|����9`����٦��-.;�J(��B�"ߨ|#��B�?	9�oJ���Ç��]w�bf��Bơ�p0k~�q� ��*XWPm|�Q�m�]J.,�B=�����TNm�8���xG������8��2�d�":�}�ԥ��9m#$+Bv���&e��ɕ�V�`0R
�LQ"�V��&]G������;C^�0�M1is<jc�z�)��}ЖB�f.��S��y6c%	�F�N�Mhj��t�����.�y���JP��[vhP(ڂ쮡���D��=��O�#݆0*D��;�ꅙr��ooNzznz`+q��Q�zv;Z����)�MA/S�p`���bN��K��&���J+�l��|�8$������HD�~���lO      �      x������ � �     