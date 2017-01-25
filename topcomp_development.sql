--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: impressions; Type: TABLE; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE TABLE impressions (
    id integer NOT NULL,
    impressionable_type character varying,
    impressionable_id integer,
    user_id integer,
    controller_name character varying,
    action_name character varying,
    view_name character varying,
    request_hash character varying,
    ip_address character varying,
    session_hash character varying,
    message text,
    referrer text,
    params text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.impressions OWNER TO ubuntu;

--
-- Name: impressions_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE impressions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.impressions_id_seq OWNER TO ubuntu;

--
-- Name: impressions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE impressions_id_seq OWNED BY impressions.id;


--
-- Name: parts; Type: TABLE; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE TABLE parts (
    id integer NOT NULL,
    "group" text,
    name text,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture_file_name text,
    picture_content_type text,
    picture_file_size integer,
    picture_updated_at timestamp without time zone,
    price double precision,
    shop_url text
);


ALTER TABLE public.parts OWNER TO ubuntu;

--
-- Name: parts_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parts_id_seq OWNER TO ubuntu;

--
-- Name: parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE parts_id_seq OWNED BY parts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE TABLE schema_migrations (
    version text NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ubuntu;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY impressions ALTER COLUMN id SET DEFAULT nextval('impressions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY parts ALTER COLUMN id SET DEFAULT nextval('parts_id_seq'::regclass);


--
-- Data for Name: impressions; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY impressions (id, impressionable_type, impressionable_id, user_id, controller_name, action_name, view_name, request_hash, ip_address, session_hash, message, referrer, params, created_at, updated_at) FROM stdin;
1	Welcome	\N	\N	welcome	index	\N	5738adbf557b34456b787bf7c96c1b14435a5bbaf9f164701f22cdce0869ba24	109.126.42.80	\N	\N	https://ide.c9.io/nikitabogdan/top-comp-com	\N	2016-11-25 10:08:40.13216	2016-11-25 10:08:40.13216
2	Part	9	\N	parts	show	\N	26811dd471a086db1549d4ff4cd6bd8cfe00463eb8b4e20f747d8bcb5919874a	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-25 10:50:49.487116	2016-11-25 10:50:49.487116
3	Part	9	\N	parts	show	\N	9f3b158db4319eaef3d1a79824b09b0f3ead0afe45fa779824f3c226bcd6ac61	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-25 10:50:53.914443	2016-11-25 10:50:53.914443
4	Part	9	\N	parts	show	\N	e145571387931d8195dd5be4c700ba6c65b0b155ce6b4fe0c6cc9383ad4abe21	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-25 11:30:23.628878	2016-11-25 11:30:23.628878
5	Part	24	\N	parts	show	\N	09cb78398d21eba903afe13e1790a31f78fd9272f2b356069f9ff62f56c7728f	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-25 11:30:30.25318	2016-11-25 11:30:30.25318
6	Part	1	\N	parts	show	\N	170e6109fcb518ea0df64d4d0c8eb208423dfae4c6ffe5db3d503c8665b3a91a	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:02:12.808574	2016-11-27 11:02:12.808574
7	Part	4	\N	parts	show	\N	72184771f8b49547dd299852688b218aa7dc019c47be507af2a081573a7993b1	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:02:17.742071	2016-11-27 11:02:17.742071
8	Part	13	\N	parts	show	\N	620b8acbd88517ce1ebb884943e8ad6e4af9703eb344261c30c0f68eb585b422	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:02:23.245689	2016-11-27 11:02:23.245689
9	Part	13	\N	parts	show	\N	9b8857ede867e86c610675b16f451f885f7bbe100854707acc5157eb7801469e	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:02:36.081957	2016-11-27 11:02:36.081957
10	Part	4	\N	parts	show	\N	45dba0a8942ca4e3a8a0a4de3b69dae374932863fb69176067f7916ad8d37d1c	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:02:42.849748	2016-11-27 11:02:42.849748
11	Part	267	\N	parts	show	\N	9329966ca6442028e6559adc9377c8ceda316a1f545ae354dde42b2bb2e7a606	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:03:33.979158	2016-11-27 11:03:33.979158
12	Part	267	\N	parts	show	\N	a0d3e8792f0b2dcd80f2bed203569600a0bcd762e21328a766b305ff9564165a	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:09:41.575971	2016-11-27 11:09:41.575971
13	Part	9	\N	parts	show	\N	f7ce62552c64a8c44e16eaa967888ec6404068e95697365084bc6eefffe29ff2	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-27 11:10:07.985437	2016-11-27 11:10:07.985437
14	Part	29	\N	parts	show	\N	a457e9a379d8d3b5070f9c816a6dc356af4b8df6002c17a8cf9c9a1a6dc467cf	109.126.42.80	\N	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2016-11-27 11:10:12.402782	2016-11-27 11:10:12.402782
15	Part	4	\N	parts	show	\N	f82111fe5db9a3b0c25cb590d0519980f27400e86651d0c2480b0dbbf3895b0c	109.126.42.80	\N	\N	\N	\N	2016-11-27 11:33:35.994913	2016-11-27 11:33:35.994913
16	Welcome	\N	\N	welcome	index	\N	044b75b174034231dc6ec8c887a515e9086dd6d4df7413cd548f5c478e2e7759	193.163.248.30	9903537a2d4ffea0a3b9d1654d27b80f	\N	\N	\N	2016-11-29 02:05:34.380396	2016-11-29 02:05:34.380396
17	Welcome	\N	\N	welcome	index	\N	f8ed2e76dd25367c4b64c5d5dc13090d2537b4e956389bf08a6cf94ab4b38c69	46.37.133.6	e22884cb494483743b5f7d6d8e0dc8fa	\N	\N	\N	2016-12-06 11:25:20.062384	2016-12-06 11:25:20.062384
18	Welcome	\N	\N	welcome	index	\N	090606c66f956b1ceb1b66cfb83fbc32dd256e491784b916413a2f5a91d8c78f	46.37.147.168	0886256a493d4817c61e8bf78d515c05	\N	\N	\N	2017-01-25 11:17:16.901942	2017-01-25 11:17:16.901942
19	Part	9	\N	parts	show	\N	578812c542e508a0a131a30e0f6425be915a065de36fc085be9b3f3a6ceaf270	46.37.147.168	0886256a493d4817c61e8bf78d515c05	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2017-01-25 11:23:55.89181	2017-01-25 11:23:55.89181
20	Part	9	\N	parts	show	\N	d95d8c6e079471f1e202f4308ba76b7ae92d7e6d66f0ed233d96adf96ab97633	46.37.147.168	0886256a493d4817c61e8bf78d515c05	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2017-01-25 11:39:12.967943	2017-01-25 11:39:12.967943
21	Part	15	\N	parts	show	\N	76d8016b08b3a200b7999505eb9bd71395009098b864aea257d02d8efdd8bb3e	46.37.147.168	0886256a493d4817c61e8bf78d515c05	\N	https://top-comp-com-nikitabogdan.c9users.io/	\N	2017-01-25 11:39:18.747303	2017-01-25 11:39:18.747303
\.


--
-- Name: impressions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('impressions_id_seq', 21, true);


--
-- Data for Name: parts; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY parts (id, "group", name, description, created_at, updated_at, picture_file_name, picture_content_type, picture_file_size, picture_updated_at, price, shop_url) FROM stdin;
4	Дисковод	Blueray-rom ASUS Black BC-12B1ST	Время доступа\tCD-ROM - 160 мс, DVD-ROM - 160 мс, BD-ROM - 250 мс\r\nБуфер - 2 Мб\r\nЧитаемые форматы - CD-R/RW, CD-DA, CD-ROM/XA, Video-CD, Photo CD, CD-Extra, CD Text, DVD-ROM, DVD-VIDEO, DVD+R, DVD-R, DVD+RW, DVD-RW, DVD-RAM, CD-ROM, BD-ROM (Single/Dual Layer), BD-R, BD-RE, BD-R DL, BD-RE DL\r\nЗаписываемые форматы - DVD-R, DVD-RW, DVD+R, DVD+RW, CD-R, CD-RW, DVD-RAM, DVD+R9 Dual Layer, DVD-R Dual Layer совместимые болванки\r\nКомплект поставки и опции\r\nСкорость чтения\tBD-ROM - 12x, BD-R/RE: 8x, BD-ROM/R/RE (Dual Layer): 6x, DVD-ROM: 16x, CD-ROM: 48x, DVD-RAM: 12x\r\nСкорость записи - DVD+R - 16x, DVD+RW - 8x, DVD-R - 16x, DVD-RW - 6x, CD-R - 48x, CD-RW - 24x, DVD+R9 (dual layer) - 8х, DVD-R DL (dual layer) - 8х, DVD-RAM - 12x	2016-11-05 04:52:19.634861	2016-11-07 00:14:43.851411	asus1.png	image/png	119638	2016-11-07 00:14:43.714475	58	https://market.yandex.ru/product--asus-bw-12b1st-black/7857657
5	VR	Star VR	два 5,5" дисплея разрешением 2560x1440\r\nсуммарное панорамное разрешение - 5K\r\nугол горизонтального обзора - 210 град.\r\nУгол вертикального обзора - 130 град.\r\nСенсоры - IMU и оптический\r\nВес - 380 гр.	2016-11-05 05:21:39.804438	2016-11-07 00:02:06.772241	0_K0QuLx0-0.jpg	image/jpeg	17462	2016-11-07 00:02:06.466422	540	http://virtual54.ru/vr-headsets-static/starvr.html
6	Системник	AeroCool Strike-X-ST	Форм-фактор - ATX, mATX, EATX\r\nТипоразмер - Full-Tower\r\nМаксимальная высота процессорного кулера - 193 мм\r\nМаксимальная длина видеокарты - 430 мм\r\nГабариты (ШхВхГ) - 230x635x700 мм\r\nМатериал корпуса - сталь - 0.8 мм\r\nЧисло внутренних отсеков 3,5" - 10\r\nЧисло отсеков 5,25" - 4\r\nДок-станция для жестких дисков - есть\r\nСлоты расширения - 10\r\nНаличие колес - есть\r\nБлок управления вентиляторами - есть\r\nВстроенные вентиляторы - 1 x 140x140 мм, 2 x 200x200 мм\r\nМеста для доп. вентиляторов - 10 x 120x120 мм, 7 x 140x140 мм, 2 x 200x200 мм\r\nВозможность установки системы жидкостного охлаждения - есть	2016-11-05 09:18:14.393981	2016-11-06 23:47:07.617399	AeroCool_Strike-X-ST.jpg	image/jpeg	121627	2016-11-06 23:47:07.379901	210	https://market.yandex.ru/product/8252557/spec?hid=91028&track=tabs
8	Клава	Mad Catz S.T.R.I.K.E.7.	Механизм клавиш - мембранный\r\nПодсветка клавиш - есть\r\nПрограммируемые клавиши - есть\r\nКонструкция - полноразмерная, составная\r\nПодставка для рук - есть\r\nТип подключения - проводная\r\nИнтерфейс подключения - USB	2016-11-06 02:43:38.676403	2016-11-06 23:38:04.203526	aEUH4UVlfrg.jpg	image/jpeg	23324	2016-11-06 23:38:04.078984	295	https://market.yandex.ru/product--mad-catz-strike-7-black-usb/9343051
9	Монитор	Asus PG348Q	Диагональ - 34"\r\nМакс. разрешение - 3440x1440\r\nСоотношение сторон \t21:9\r\nМакс. частота кадров (Гц) - 100\r\nМакс. количество цветов - 1 млрд\r\nКонтрастность - 1000:1\r\nТип матрицы - IPS\r\nТип подсветки - cветодиодная W-LED\r\nВремя отклика (мс) - 4\r\nЯркость (кд/м2) - 300\r\nРазмер пикселя (мм) - 0.16\r\nГориз. область обзора - 178 град.\r\nВерт. область обзора - 178 град.\r\nПоворот на 90° - да\r\nРегулировка по высоте - да\r\nНастенное крепление - VESA 100х100мм\r\nСтереодинамики - да\r\nКоличество встроенных динамиков - 2\r\nМощность динамиков - 7Вт на канал\r\nВход DisplayPort - 1\r\nВход Mini DisplayPort - 1\r\nВход HDMI - 1	2016-11-06 23:27:43.818677	2016-11-06 23:38:41.717641	pg348q.png	image/png	376542	2016-11-06 23:38:41.545247	1784	https://market.yandex.ru/product--asus-rog-swift-pg348q/12853586
10	HDD	Seagate BarraCuda Pro 10TB	Ёмкость - 10 Тб\r\nПроизводительность - 7200 об/мин\r\nИнтерфейс - SATA 3	2016-11-07 00:20:57.400723	2016-11-07 00:20:57.400723	StorageReview-Seagate-BarraCuda-Pro-10TB.jpg	image/jpeg	96902	2016-11-07 00:20:57.098616	500	https://www.amazon.com/Seagate-BarraCuda-3-5-Inch-Internal-ST10000DM0004/dp/B01IA9H22Q
11	SSD	Samsung Enterprise SSD PM863 SATA 3.84TB	Чтение/запись - 540MB/s /480 MB/s.	2016-11-08 11:35:16.434303	2016-11-08 11:35:16.434303	600x600.png	image/png	518127	2016-11-08 11:35:15.977805	1700	https://www.amazon.com/Samsung-PM863-3-84TB-SATA-INTERNAL/dp/B014VZGJN6
12	БП	EVGA SuperNOVA 1600 T2	Мощность 1600 Вт	2016-11-08 11:39:09.888885	2016-11-08 11:39:09.888885	EVGA_220-T2-1600-X1_80.jpg	image/jpeg	258620	2016-11-08 11:39:09.403978	400	https://www.amazon.com/EVGA-SuperNOVA-TITANIUM-Warranty-220-T2-1600-X1/dp/B00R33ZBQU/ref=sr_1_1?s=pc&ie=UTF8&qid=1478605091&sr=1-1&keywords=EVGA+SuperNOVA+1600+T2
13	SSD m.2	SSD Samsung 960Pro	1 ТБ. Скорость чтения ≈ 3,500 MB/s, записи ≈ 2,100 MB/s,	2016-11-08 11:41:47.130316	2016-11-08 11:41:47.130316	ssd960pro1.jpg	image/jpeg	40866	2016-11-08 11:41:46.818457	630	https://www.amazon.com/Samsung-960-PRO-Internal-MZ-V6P1T0BW/dp/B01LYRCIPG/ref=sr_1_fkmr0_2?s=pc&ie=UTF8&qid=1478605232&sr=1-2-fkmr0&keywords=SSD+Samsung+960Pro
14	RAM	Viper Elite DDR4	Две планки по 8 Гб, работающих на частоте частоте - 3733 МГц!\r\nТайминги - 17-19-19-39	2016-11-08 11:53:23.146105	2016-11-08 11:53:45.010407	Viper_elite_DDR4_3733MHz.jpg	image/jpeg	51335	2016-11-08 11:53:44.803888	231	http://www.directdial.com/PVE416G373C7KRD.html
15	Мать Intel	ASUS RAMPAGE V EXTREME	форм-фактор - EATX\r\nсокет LGA2011-3\r\nчипсет Intel X99\r\n8 слотов DDR4 DIMM, 3300 МГц\r\nподдержка SLI/CrossFireX\r\nразъемы SATA: 6 Гбит/с - 8\r\nWi-Fi 802.11ac\r\nBluetooth	2016-11-08 11:59:40.614607	2016-11-08 11:59:40.614607	asusrampagev.jpg	image/jpeg	391107	2016-11-08 11:59:40.207141	510	https://market.yandex.ru/product--asus-rampage-v-extreme/11008438
16	Мать AMD	GIGABYTE GA-990FXA-UD7	Форм-фактор - E-ATX\r\nСокет - AM3+\r\nЧипсет - AMD 990FX\r\nКоличество слотов памяти DDR3 -  4\r\nМаксимальная частота памяти - 2000 МГц\r\nКоличество каналов памяти - 2\r\nКоличество слотов PCI-E x16 - 6\r\nКоличество USB на задней панели - 2x USB 3.0, 7x USB 2.0\r\nАудио схема - 7.1	2016-11-08 12:19:18.831392	2016-11-08 12:19:18.831392	0LZEBIMknJQ.jpg	image/jpeg	261007	2016-11-08 12:19:18.436201	200	https://www.amazon.com/GIGABYTE-GA-990FXA-UD7-990FX-SATA-Motherboard/dp/B0055QYKRI
17	Джойстик	Thrustmaster hotas warthog joystick	Проводной USB джойстик\r\nКоличество осей - 10\r\nКоличество переключателей вида - 4\r\nD-pad\r\nКоличество кнопок - 28	2016-11-08 12:35:36.861551	2016-11-08 12:35:36.861551	hotasw.jpg	image/jpeg	670262	2016-11-08 12:35:36.15039	590	https://market.yandex.ru/product--thrustmaster-hotas-warthog/6839360
18	CPU Intel	Intel Core i7-6950X	10 ядерный процессор 25M кэша 3 уровня, 3.0 ГГц , сокет - LGA 2011-v3	2016-11-08 12:43:48.606212	2016-11-08 12:43:48.606212	6950x.jpg	image/jpeg	272815	2016-11-08 12:43:48.128945	1930	https://market.yandex.ru/product--intel-core-i7-6950x-extreme-edition-broadwell-e-3000mhz-lga2011-3-l3-25600kb/13974634
19	CPU AMD	AMD FX-9590	8 ядерный процессор \r\n8Мб кэша 3 уровня \r\nтаактовая частота 4.7ГГц\r\nСокет - А3+	2016-11-08 12:49:33.651211	2016-11-08 12:49:33.651211	9590.jpg	image/jpeg	334974	2016-11-08 12:49:32.963786	250	https://market.yandex.ru/product/10453183?was_redir=1&srnum=48&nid=55330&hid=91019&text=AMD%20FX-9590
20	Руль	Logitech g27	проводной (USB) руль\r\n6-ти скоростная коробка передач\r\nпедали газа, тормоза и сцепления\r\nдиаметр руля 28 см, угол поворота 900°\r\nкожаная оплётка\r\nвиброотдача\r\nкрестовина \r\n18 кнопок	2016-11-08 12:54:35.240521	2016-11-08 12:54:35.240521	Logitech_g27.jpg	image/jpeg	26381	2016-11-08 12:54:35.107425	400	https://market.yandex.ru/product/5017079?was_redir=1&srnum=3&nid=55337&hid=91117&text=Logitech%20g27
21	GPU Nvidia	Titan X	12288 Мб видеопамяти GDDR5\r\nчастота ядра -1000\r\nчастота памяти - 7010 МГц\r\nподдержка режима SLI\r\nразъемы - DVI, HDMI, DisplayPort x3	2016-11-08 13:00:16.427643	2016-11-10 10:35:02.953517	TitanX.jpg	image/jpeg	148078	2016-11-08 13:00:16.100728	1470	https://market.yandex.ru/product--asus-geforce-gtx-titan-x-1000mhz-pci-e-30-12288mb-7010mhz-384-bit-dvi-hdmi-hdcp/12365614
22	GPU AMD	Sapphire Nitro + RX 480	Частота GPU - 1342 МГц\r\nКол-во шейдерных процессоров - 2304\r\nВидеопамять - 8 Гб\r\nТип видеопамяти\tGDDR5\r\nРазрядность шины видеопамяти - 256 бит\r\nЧастота видеопамяти - 2000 МГц\r\nИнтерфейс -PCI Express 3.0 16x\r\nПорты - 2 выхода DisplayPort, DVI-D, 2 выхода HDMI 2.0	2016-11-08 13:13:18.121965	2016-11-08 13:13:18.121965	Sapphire_NitroPlus_RX_480.png	image/png	446489	2016-11-08 13:13:17.619317	345	http://www.nix.ru/autocatalog/sapphire/8Gb-PCI-E-DDR5-Sapphire-RADEON-RX-480-Nitro-plus-OC-VerBP-RTL-DVI-plus-DualHDMI-plus-DualDP_277447.html
23	Наушники	SteelSeries H Wireless Gaming Headset	беспроводные наушники\r\nвстроенный регулятор громкости\r\nрежим объемного звучания - surround\r\nподключение - USB / 2 x mini jack 3.5 mm\r\nчастоты воспроизведения 20-20000 Гц\r\nмикрофон	2016-11-08 13:17:44.240264	2016-11-08 13:17:44.240264	руфвыуе.png	image/png	242428	2016-11-08 13:17:43.94875	310	https://www.amazon.com/SteelSeries-Wireless-Gaming-Headset-Surround/dp/B00G6IJ5NI/ref=sr_1_1?ie=UTF8&qid=1478610933&sr=8-1&keywords=SteelSeries+H+Wireless+Gaming+Headset
24	Акустика	yamaha hs7	мониторы акустические\r\nтип фазоинверторный\r\nвстроенный усилитель 95 Вт\r\nдиапазон частот 43-30000 Гц	2016-11-08 13:20:58.418331	2016-11-08 13:20:58.418331	hs7-pair.jpg	image/jpeg	512704	2016-11-08 13:20:57.967494	315	https://market.yandex.ru/product--yamaha-hs7/10494803
25	Звуковуха	Sound Blaster X7	внешняя звуковая карта\r\nинтерфейс - USB 2.0\r\nаналоговые аудиовыходы - 6\r\nЦАП 24 бит / 192 кГц	2016-11-08 13:27:17.288035	2016-11-08 13:27:17.288035	Creative_X7_5.1.png.png	image/png	150071	2016-11-08 13:27:16.940438	430	https://market.yandex.ru/product--creative-sound-blaster-x7/12437939
26	Регулятор Оборотов	FC5 v3 - Lamptron	Регулятор оборотов на 6 вентиляторов\r\nДатчики температур - есть	2016-11-10 10:03:55.422575	2016-11-10 10:29:20.149961	cntr_3q.jpg	image/jpeg	89270	2016-11-10 10:03:54.996569	90	http://power-cooling.ru/catalog/reobasy_i_paneli_upravleniya/?arrFilter_216_565930927=Y&set_filter=Y
27	Кулер	Noctua NH-D15	Отвод тепла от процессора  220Вт	2016-11-10 10:06:26.468471	2016-11-10 10:06:26.468471	Noctua_NH-D15.jpg	image/jpeg	129960	2016-11-10 10:06:26.171448	110	https://market.yandex.ru/product--noctua-nh-d15/11030667
28	Картридер	 NZXT Aperture M	Поддержка карт памяти -  CF, MD, SM, XD, SD, SDHC, SDXC, MMC, MS, M2, and MicroSD\r\n+ 2 разъёма USB 3.0	2016-11-10 10:33:42.964452	2016-11-10 13:09:19.090068	CA110NX_60671_800x800.jpg	image/jpeg	165420	2016-11-10 10:33:42.697661	40	https://www.amazon.com/NZXT-Aperture-Internal-5-25-Inch-AA-APMU3-B1/dp/B008KEPWMY
29	Мышь	Logitech G900 Chaos Spectrum	Проводная/беспроводная\r\n12000 dpi!\r\nсветодиодная\r\n12 клавиш (11 программируемых)	2016-11-11 02:13:27.671291	2016-11-11 02:13:27.671291	mouse.jpg	image/jpeg	28782	2016-11-11 02:13:27.437231	155	https://market.yandex.ru/product--logitech-g900-chaos-spectrum-black-usb/13905885
\.


--
-- Name: parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('parts_id_seq', 30, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY schema_migrations (version) FROM stdin;
20161105034636
20161105034724
20161106021659
20161106021831
20161125100552
\.


--
-- Name: impressions_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu; Tablespace: 
--

ALTER TABLE ONLY impressions
    ADD CONSTRAINT impressions_pkey PRIMARY KEY (id);


--
-- Name: parts_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu; Tablespace: 
--

ALTER TABLE ONLY parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (id);


--
-- Name: controlleraction_ip_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX controlleraction_ip_index ON impressions USING btree (controller_name, action_name, ip_address);


--
-- Name: controlleraction_request_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX controlleraction_request_index ON impressions USING btree (controller_name, action_name, request_hash);


--
-- Name: controlleraction_session_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX controlleraction_session_index ON impressions USING btree (controller_name, action_name, session_hash);


--
-- Name: impressionable_type_message_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX impressionable_type_message_index ON impressions USING btree (impressionable_type, message, impressionable_id);


--
-- Name: index_impressions_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX index_impressions_on_user_id ON impressions USING btree (user_id);


--
-- Name: poly_ip_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX poly_ip_index ON impressions USING btree (impressionable_type, impressionable_id, ip_address);


--
-- Name: poly_params_request_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX poly_params_request_index ON impressions USING btree (impressionable_type, impressionable_id, params);


--
-- Name: poly_request_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX poly_request_index ON impressions USING btree (impressionable_type, impressionable_id, request_hash);


--
-- Name: poly_session_index; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE INDEX poly_session_index ON impressions USING btree (impressionable_type, impressionable_id, session_hash);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: ubuntu; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

