--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.8
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-04-25 21:53:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 74378)
-- Name: biotecmar; Type: SCHEMA; Schema: -; Owner: biotecmar
--

CREATE SCHEMA biotecmar;


ALTER SCHEMA biotecmar OWNER TO biotecmar;

SET search_path = biotecmar, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 179 (class 1259 OID 74620)
-- Name: abiotic_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE abiotic_analysis (
    id integer NOT NULL,
    salinity_s numeric,
    temperature_c numeric,
    doc_um numeric,
    nitrite_um numeric,
    nitrate_um numeric,
    ammonia_um numeric,
    organic_nitrogen_um numeric,
    silicate_um numeric,
    organic_phosphorous_um numeric,
    ortho_phosphate_um numeric
);


ALTER TABLE abiotic_analysis OWNER TO biotecmar;

--
-- TOC entry 178 (class 1259 OID 74618)
-- Name: abiotic_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE abiotic_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE abiotic_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 178
-- Name: abiotic_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE abiotic_analysis_id_seq OWNED BY abiotic_analysis.id;


--
-- TOC entry 177 (class 1259 OID 74609)
-- Name: area; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE area (
    id integer NOT NULL,
    name text,
    nw_latitude numeric,
    nw_longitude numeric,
    se_latitude numeric,
    se_longitude numeric
);


ALTER TABLE area OWNER TO biotecmar;

--
-- TOC entry 176 (class 1259 OID 74607)
-- Name: area_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE area_id_seq OWNER TO biotecmar;

--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 176
-- Name: area_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE area_id_seq OWNED BY area.id;


--
-- TOC entry 171 (class 1259 OID 74381)
-- Name: ator; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE ator (
    id integer NOT NULL,
    login character varying NOT NULL,
    senha character varying NOT NULL,
    nome character varying NOT NULL,
    perfil character varying NOT NULL
);


ALTER TABLE ator OWNER TO biotecmar;

--
-- TOC entry 170 (class 1259 OID 74379)
-- Name: ator_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE ator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ator_id_seq OWNER TO biotecmar;

--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 170
-- Name: ator_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE ator_id_seq OWNED BY ator.id;


--
-- TOC entry 192 (class 1259 OID 74723)
-- Name: benthic_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE benthic_analysis (
    id integer NOT NULL,
    taxon text,
    relative_abundance numeric
);


ALTER TABLE benthic_analysis OWNER TO biotecmar;

--
-- TOC entry 191 (class 1259 OID 74721)
-- Name: benthic_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE benthic_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE benthic_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 191
-- Name: benthic_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE benthic_analysis_id_seq OWNED BY benthic_analysis.id;


--
-- TOC entry 181 (class 1259 OID 74634)
-- Name: biotic_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE biotic_analysis (
    id integer NOT NULL,
    bacterial_count_cellml numeric,
    chlorophyll_a_ugl numeric,
    pheophytin_ugl numeric
);


ALTER TABLE biotic_analysis OWNER TO biotecmar;

--
-- TOC entry 180 (class 1259 OID 74632)
-- Name: biotic_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE biotic_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE biotic_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 180
-- Name: biotic_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE biotic_analysis_id_seq OWNED BY biotic_analysis.id;


--
-- TOC entry 172 (class 1259 OID 74392)
-- Name: configuracao; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE configuracao (
    nom_configuracao character varying(100),
    valor_configuracao character varying(200)
);


ALTER TABLE configuracao OWNER TO biotecmar;

--
-- TOC entry 217 (class 1259 OID 123676)
-- Name: dataset; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE dataset (
    uuid character varying(100) NOT NULL,
    descricao character varying(200),
    id bigint NOT NULL,
    data_alt timestamp without time zone
);


ALTER TABLE dataset OWNER TO biotecmar;

--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN dataset.uuid; Type: COMMENT; Schema: biotecmar; Owner: biotecmar
--

COMMENT ON COLUMN dataset.uuid IS 'Coluna responsÃ¡vel por armazenar o valor do uuid do dataset';


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN dataset.data_alt; Type: COMMENT; Schema: biotecmar; Owner: biotecmar
--

COMMENT ON COLUMN dataset.data_alt IS 'Coluna responsÃ¡vel por armazenar a data da Ãºltima alteraÃ§Ã£o do dataset.';


--
-- TOC entry 218 (class 1259 OID 123681)
-- Name: dataset_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE dataset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dataset_id_seq OWNER TO biotecmar;

--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 218
-- Name: dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE dataset_id_seq OWNED BY dataset.id;


--
-- TOC entry 190 (class 1259 OID 74709)
-- Name: fish_assembly_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE fish_assembly_analysis (
    id integer NOT NULL,
    abundance numeric,
    id_taxon bigint,
    id_sample integer
);


ALTER TABLE fish_assembly_analysis OWNER TO biotecmar;

--
-- TOC entry 189 (class 1259 OID 74707)
-- Name: fish_assembly_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE fish_assembly_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fish_assembly_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 189
-- Name: fish_assembly_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE fish_assembly_analysis_id_seq OWNED BY fish_assembly_analysis.id;


--
-- TOC entry 188 (class 1259 OID 74688)
-- Name: metagenome_functional_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE metagenome_functional_analysis (
    id integer NOT NULL,
    reference_db_id text NOT NULL,
    function text NOT NULL,
    id_meta_analysis integer
);


ALTER TABLE metagenome_functional_analysis OWNER TO biotecmar;

--
-- TOC entry 187 (class 1259 OID 74686)
-- Name: metagenome_functional_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE metagenome_functional_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE metagenome_functional_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 187
-- Name: metagenome_functional_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE metagenome_functional_analysis_id_seq OWNED BY metagenome_functional_analysis.id;


--
-- TOC entry 185 (class 1259 OID 74664)
-- Name: metagenome_taxonomic_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE metagenome_taxonomic_analysis (
    id integer NOT NULL,
    taxon text NOT NULL,
    abundance numeric,
    id_meta_analysis integer
);


ALTER TABLE metagenome_taxonomic_analysis OWNER TO biotecmar;

--
-- TOC entry 184 (class 1259 OID 74662)
-- Name: metagenome_taxonomic_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE metagenome_taxonomic_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE metagenome_taxonomic_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 184
-- Name: metagenome_taxonomic_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE metagenome_taxonomic_analysis_id_seq OWNED BY metagenome_taxonomic_analysis.id;


--
-- TOC entry 183 (class 1259 OID 74648)
-- Name: metagenomic_analysis; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE metagenomic_analysis (
    id integer NOT NULL,
    external_id text,
    fasta_file_url text
);


ALTER TABLE metagenomic_analysis OWNER TO biotecmar;

--
-- TOC entry 182 (class 1259 OID 74646)
-- Name: metagenomic_analysis_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE metagenomic_analysis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE metagenomic_analysis_id_seq OWNER TO biotecmar;

--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 182
-- Name: metagenomic_analysis_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE metagenomic_analysis_id_seq OWNED BY metagenomic_analysis.id;


--
-- TOC entry 186 (class 1259 OID 74678)
-- Name: reference_db; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE reference_db (
    id text NOT NULL
);


ALTER TABLE reference_db OWNER TO biotecmar;

--
-- TOC entry 175 (class 1259 OID 74591)
-- Name: sample; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE sample (
    id bigint NOT NULL,
    type text,
    environment text,
    name text,
    latitude numeric,
    longitude numeric,
    depth numeric,
    dt date,
    id_sample bigint NOT NULL,
    id_dataset bigint
);


ALTER TABLE sample OWNER TO biotecmar;

--
-- TOC entry 195 (class 1259 OID 90761)
-- Name: sample_id_sample_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE sample_id_sample_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_id_sample_seq OWNER TO biotecmar;

--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 195
-- Name: sample_id_sample_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE sample_id_sample_seq OWNED BY sample.id_sample;


--
-- TOC entry 174 (class 1259 OID 74589)
-- Name: sample_id_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE sample_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_id_seq OWNER TO biotecmar;

--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 174
-- Name: sample_id_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE sample_id_seq OWNED BY sample.id;


--
-- TOC entry 173 (class 1259 OID 74581)
-- Name: sample_type; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE sample_type (
    type text NOT NULL
);


ALTER TABLE sample_type OWNER TO biotecmar;

--
-- TOC entry 194 (class 1259 OID 82571)
-- Name: taxon; Type: TABLE; Schema: biotecmar; Owner: biotecmar
--

CREATE TABLE taxon (
    id_taxon bigint NOT NULL,
    kingdom character varying(100),
    phylum character varying(100),
    class character varying(100),
    ord character varying,
    family character varying(100),
    genus character varying(100),
    species character varying(100),
    infraspecificepithet character varying(100),
    taxonrank character varying(100),
    scientificname character varying(100),
    taxonkey character varying(70)
);


ALTER TABLE taxon OWNER TO biotecmar;

--
-- TOC entry 193 (class 1259 OID 82569)
-- Name: taxon_id_taxon_seq; Type: SEQUENCE; Schema: biotecmar; Owner: biotecmar
--

CREATE SEQUENCE taxon_id_taxon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taxon_id_taxon_seq OWNER TO biotecmar;

--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 193
-- Name: taxon_id_taxon_seq; Type: SEQUENCE OWNED BY; Schema: biotecmar; Owner: biotecmar
--

ALTER SEQUENCE taxon_id_taxon_seq OWNED BY taxon.id_taxon;


--
-- TOC entry 1971 (class 2604 OID 74623)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY abiotic_analysis ALTER COLUMN id SET DEFAULT nextval('abiotic_analysis_id_seq'::regclass);


--
-- TOC entry 1970 (class 2604 OID 74612)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY area ALTER COLUMN id SET DEFAULT nextval('area_id_seq'::regclass);


--
-- TOC entry 1967 (class 2604 OID 74384)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY ator ALTER COLUMN id SET DEFAULT nextval('ator_id_seq'::regclass);


--
-- TOC entry 1977 (class 2604 OID 74726)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY benthic_analysis ALTER COLUMN id SET DEFAULT nextval('benthic_analysis_id_seq'::regclass);


--
-- TOC entry 1972 (class 2604 OID 74637)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY biotic_analysis ALTER COLUMN id SET DEFAULT nextval('biotic_analysis_id_seq'::regclass);


--
-- TOC entry 1979 (class 2604 OID 123683)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY dataset ALTER COLUMN id SET DEFAULT nextval('dataset_id_seq'::regclass);


--
-- TOC entry 1976 (class 2604 OID 74712)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY fish_assembly_analysis ALTER COLUMN id SET DEFAULT nextval('fish_assembly_analysis_id_seq'::regclass);


--
-- TOC entry 1975 (class 2604 OID 74691)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_functional_analysis ALTER COLUMN id SET DEFAULT nextval('metagenome_functional_analysis_id_seq'::regclass);


--
-- TOC entry 1974 (class 2604 OID 74667)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_taxonomic_analysis ALTER COLUMN id SET DEFAULT nextval('metagenome_taxonomic_analysis_id_seq'::regclass);


--
-- TOC entry 1973 (class 2604 OID 74651)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenomic_analysis ALTER COLUMN id SET DEFAULT nextval('metagenomic_analysis_id_seq'::regclass);


--
-- TOC entry 1969 (class 2604 OID 116338)
-- Name: id; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample ALTER COLUMN id SET DEFAULT nextval('sample_id_seq'::regclass);


--
-- TOC entry 1968 (class 2604 OID 90763)
-- Name: id_sample; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample ALTER COLUMN id_sample SET DEFAULT nextval('sample_id_sample_seq'::regclass);


--
-- TOC entry 1978 (class 2604 OID 82574)
-- Name: id_taxon; Type: DEFAULT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY taxon ALTER COLUMN id_taxon SET DEFAULT nextval('taxon_id_taxon_seq'::regclass);


--
-- TOC entry 2141 (class 0 OID 74620)
-- Dependencies: 179
-- Data for Name: abiotic_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 178
-- Name: abiotic_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('abiotic_analysis_id_seq', 1, false);


--
-- TOC entry 2139 (class 0 OID 74609)
-- Dependencies: 177
-- Data for Name: area; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 176
-- Name: area_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('area_id_seq', 1, false);


--
-- TOC entry 2133 (class 0 OID 74381)
-- Dependencies: 171
-- Data for Name: ator; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--

INSERT INTO ator VALUES (1, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', 'AD');


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 170
-- Name: ator_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('ator_id_seq', 1, true);


--
-- TOC entry 2154 (class 0 OID 74723)
-- Dependencies: 192
-- Data for Name: benthic_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 191
-- Name: benthic_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('benthic_analysis_id_seq', 1, false);


--
-- TOC entry 2143 (class 0 OID 74634)
-- Dependencies: 181
-- Data for Name: biotic_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 180
-- Name: biotic_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('biotic_analysis_id_seq', 1, false);


--
-- TOC entry 2134 (class 0 OID 74392)
-- Dependencies: 172
-- Data for Name: configuracao; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--

INSERT INTO configuracao VALUES ('gerenciador', '1.0');


--
-- TOC entry 2158 (class 0 OID 123676)
-- Dependencies: 217
-- Data for Name: dataset; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--

INSERT INTO dataset VALUES ('1edcfe6d-da55-4d59-b30e-468cd21f8b0b', '1edcfe6d-da55-4d59-b30e-468cd21f8b0b', 1, '2016-02-22 20:00:00');


--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 218
-- Name: dataset_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('dataset_id_seq', 11, true);


--
-- TOC entry 2152 (class 0 OID 74709)
-- Dependencies: 190
-- Data for Name: fish_assembly_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 189
-- Name: fish_assembly_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('fish_assembly_analysis_id_seq', 10089, true);


--
-- TOC entry 2150 (class 0 OID 74688)
-- Dependencies: 188
-- Data for Name: metagenome_functional_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 187
-- Name: metagenome_functional_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('metagenome_functional_analysis_id_seq', 1, false);


--
-- TOC entry 2147 (class 0 OID 74664)
-- Dependencies: 185
-- Data for Name: metagenome_taxonomic_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 184
-- Name: metagenome_taxonomic_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('metagenome_taxonomic_analysis_id_seq', 1, false);


--
-- TOC entry 2145 (class 0 OID 74648)
-- Dependencies: 183
-- Data for Name: metagenomic_analysis; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 182
-- Name: metagenomic_analysis_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('metagenomic_analysis_id_seq', 1, false);


--
-- TOC entry 2148 (class 0 OID 74678)
-- Dependencies: 186
-- Data for Name: reference_db; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2137 (class 0 OID 74591)
-- Dependencies: 175
-- Data for Name: sample; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 195
-- Name: sample_id_sample_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('sample_id_sample_seq', 3779, true);


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 174
-- Name: sample_id_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('sample_id_seq', 3873, true);


--
-- TOC entry 2135 (class 0 OID 74581)
-- Dependencies: 173
-- Data for Name: sample_type; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2156 (class 0 OID 82571)
-- Dependencies: 194
-- Data for Name: taxon; Type: TABLE DATA; Schema: biotecmar; Owner: biotecmar
--



--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 193
-- Name: taxon_id_taxon_seq; Type: SEQUENCE SET; Schema: biotecmar; Owner: biotecmar
--

SELECT pg_catalog.setval('taxon_id_taxon_seq', 9215, true);


--
-- TOC entry 1995 (class 2606 OID 82610)
-- Name: PK_ABIOTIC_ANALYSIS; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY abiotic_analysis
    ADD CONSTRAINT "PK_ABIOTIC_ANALYSIS" PRIMARY KEY (id);


--
-- TOC entry 2010 (class 2606 OID 82612)
-- Name: PK_BENTHIC_ANALYSIS; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY benthic_analysis
    ADD CONSTRAINT "PK_BENTHIC_ANALYSIS" PRIMARY KEY (id);


--
-- TOC entry 1997 (class 2606 OID 82608)
-- Name: PK_BIOTIC_ANALYSIS; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY biotic_analysis
    ADD CONSTRAINT "PK_BIOTIC_ANALYSIS" PRIMARY KEY (id);


--
-- TOC entry 2014 (class 2606 OID 123714)
-- Name: PK_DATASET; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY dataset
    ADD CONSTRAINT "PK_DATASET" PRIMARY KEY (id);


--
-- TOC entry 2008 (class 2606 OID 82601)
-- Name: PK_FISH_A_A; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY fish_assembly_analysis
    ADD CONSTRAINT "PK_FISH_A_A" PRIMARY KEY (id);


--
-- TOC entry 2012 (class 2606 OID 82579)
-- Name: PK_TAXON; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY taxon
    ADD CONSTRAINT "PK_TAXON" PRIMARY KEY (id_taxon);


--
-- TOC entry 1981 (class 2606 OID 74391)
-- Name: ak_ator_email; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY ator
    ADD CONSTRAINT ak_ator_email UNIQUE (login);


--
-- TOC entry 1993 (class 2606 OID 74617)
-- Name: area_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 2005 (class 2606 OID 74696)
-- Name: metagenome_functional_analysis_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_functional_analysis
    ADD CONSTRAINT metagenome_functional_analysis_pkey PRIMARY KEY (id, reference_db_id, function);


--
-- TOC entry 2001 (class 2606 OID 74672)
-- Name: metagenome_taxonomic_analysis_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_taxonomic_analysis
    ADD CONSTRAINT metagenome_taxonomic_analysis_pkey PRIMARY KEY (id, taxon);


--
-- TOC entry 1999 (class 2606 OID 74656)
-- Name: metagenomic_analysis_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenomic_analysis
    ADD CONSTRAINT metagenomic_analysis_pkey PRIMARY KEY (id);


--
-- TOC entry 1983 (class 2606 OID 74389)
-- Name: pk_ator; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY ator
    ADD CONSTRAINT pk_ator PRIMARY KEY (id);


--
-- TOC entry 2003 (class 2606 OID 74685)
-- Name: reference_db_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY reference_db
    ADD CONSTRAINT reference_db_pkey PRIMARY KEY (id);


--
-- TOC entry 1989 (class 2606 OID 74601)
-- Name: sample_name_key; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample
    ADD CONSTRAINT sample_name_key UNIQUE (name);


--
-- TOC entry 1991 (class 2606 OID 116340)
-- Name: sample_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample
    ADD CONSTRAINT sample_pkey PRIMARY KEY (id);


--
-- TOC entry 1987 (class 2606 OID 74588)
-- Name: sample_type_pkey; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample_type
    ADD CONSTRAINT sample_type_pkey PRIMARY KEY (type);


--
-- TOC entry 1985 (class 2606 OID 74396)
-- Name: unique_nom_configuracao; Type: CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY configuracao
    ADD CONSTRAINT unique_nom_configuracao UNIQUE (nom_configuracao);


--
-- TOC entry 2006 (class 1259 OID 82628)
-- Name: FKI_FAA_SAMPLE; Type: INDEX; Schema: biotecmar; Owner: biotecmar
--

CREATE INDEX "FKI_FAA_SAMPLE" ON fish_assembly_analysis USING btree (id_sample);


--
-- TOC entry 2024 (class 2606 OID 116356)
-- Name: FK_FAA_SAMPLE; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY fish_assembly_analysis
    ADD CONSTRAINT "FK_FAA_SAMPLE" FOREIGN KEY (id_sample) REFERENCES sample(id);


--
-- TOC entry 2023 (class 2606 OID 107329)
-- Name: FK_FISH_A_A_TAXON; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY fish_assembly_analysis
    ADD CONSTRAINT "FK_FISH_A_A_TAXON" FOREIGN KEY (id_taxon) REFERENCES taxon(id_taxon);


--
-- TOC entry 2021 (class 2606 OID 107334)
-- Name: FK_MFA_MA; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_functional_analysis
    ADD CONSTRAINT "FK_MFA_MA" FOREIGN KEY (id_meta_analysis) REFERENCES metagenomic_analysis(id);


--
-- TOC entry 2020 (class 2606 OID 107344)
-- Name: FK_MTA_MA; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_taxonomic_analysis
    ADD CONSTRAINT "FK_MTA_MA" FOREIGN KEY (id_meta_analysis) REFERENCES metagenomic_analysis(id);


--
-- TOC entry 2016 (class 2606 OID 123720)
-- Name: FK_SAMPLE_DATASET; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample
    ADD CONSTRAINT "FK_SAMPLE_DATASET" FOREIGN KEY (id_dataset) REFERENCES dataset(id);


--
-- TOC entry 2017 (class 2606 OID 116341)
-- Name: abiotic_analysis_id_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY abiotic_analysis
    ADD CONSTRAINT abiotic_analysis_id_fkey FOREIGN KEY (id) REFERENCES sample(id);


--
-- TOC entry 2025 (class 2606 OID 116346)
-- Name: benthic_analysis_id_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY benthic_analysis
    ADD CONSTRAINT benthic_analysis_id_fkey FOREIGN KEY (id) REFERENCES sample(id);


--
-- TOC entry 2018 (class 2606 OID 116351)
-- Name: biotic_analysis_id_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY biotic_analysis
    ADD CONSTRAINT biotic_analysis_id_fkey FOREIGN KEY (id) REFERENCES sample(id);


--
-- TOC entry 2022 (class 2606 OID 107339)
-- Name: metagenome_functional_analysis_reference_db_id_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenome_functional_analysis
    ADD CONSTRAINT metagenome_functional_analysis_reference_db_id_fkey FOREIGN KEY (reference_db_id) REFERENCES reference_db(id);


--
-- TOC entry 2019 (class 2606 OID 116361)
-- Name: metagenomic_analysis_id_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY metagenomic_analysis
    ADD CONSTRAINT metagenomic_analysis_id_fkey FOREIGN KEY (id) REFERENCES sample(id);


--
-- TOC entry 2015 (class 2606 OID 123715)
-- Name: sample_type_fkey; Type: FK CONSTRAINT; Schema: biotecmar; Owner: biotecmar
--

ALTER TABLE ONLY sample
    ADD CONSTRAINT sample_type_fkey FOREIGN KEY (type) REFERENCES sample_type(type);


-- Completed on 2016-04-25 21:53:27

--
-- PostgreSQL database dump complete
--

