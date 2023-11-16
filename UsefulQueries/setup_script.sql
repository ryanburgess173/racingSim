--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-16 07:24:37

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

DROP DATABASE IF EXISTS "racingSim";
--
-- TOC entry 4840 (class 1262 OID 16394)
-- Name: racingSim; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "racingSim" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "racingSim" OWNER TO postgres;

\connect "racingSim"

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

--
-- TOC entry 6 (class 2615 OID 16395)
-- Name: main; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA main;


ALTER SCHEMA main OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: Drivers; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Drivers" (
    "DriverID" numeric NOT NULL,
    "DriverName" character varying NOT NULL
);


ALTER TABLE main."Drivers" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16422)
-- Name: Events; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Events" (
    "EventID" numeric NOT NULL,
    "EventName" character varying NOT NULL,
    "SeriesID" numeric NOT NULL,
    "TrackID" numeric NOT NULL,
    "SeasonID" numeric NOT NULL,
    "EventNumber" numeric NOT NULL
);


ALTER TABLE main."Events" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16485)
-- Name: SeasonRatings; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."SeasonRatings" (
    "SeasonRatingID" numeric NOT NULL,
    "DriverID" numeric NOT NULL,
    "SeasonID" numeric NOT NULL,
    "WinFactor" numeric NOT NULL,
    "StandingsFactor" numeric NOT NULL
);


ALTER TABLE main."SeasonRatings" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16449)
-- Name: Seasons; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Seasons" (
    "SeasonID" numeric NOT NULL,
    "SeasonYear" numeric NOT NULL,
    "SeriesID" numeric NOT NULL
);


ALTER TABLE main."Seasons" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16396)
-- Name: Series; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Series" (
    "SeriesID" numeric NOT NULL,
    "SeriesName" character varying NOT NULL
);


ALTER TABLE main."Series" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16403)
-- Name: Tracks; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Tracks" (
    "TrackID" numeric NOT NULL,
    "TrackName" character varying NOT NULL
);


ALTER TABLE main."Tracks" OWNER TO postgres;

--
-- TOC entry 4673 (class 2606 OID 16512)
-- Name: Drivers DriverID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "DriverID" UNIQUE ("DriverID");


--
-- TOC entry 4675 (class 2606 OID 16498)
-- Name: Drivers Drivers_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "Drivers_pkey" PRIMARY KEY ("DriverID");


--
-- TOC entry 4667 (class 2606 OID 16514)
-- Name: Events EventID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "EventID" UNIQUE ("EventID");


--
-- TOC entry 4669 (class 2606 OID 16548)
-- Name: Events EventName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "EventName" UNIQUE ("EventName");


--
-- TOC entry 4671 (class 2606 OID 16428)
-- Name: Events Events_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY ("EventID");


--
-- TOC entry 4661 (class 2606 OID 16540)
-- Name: Tracks ID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "ID" UNIQUE ("TrackID");


--
-- TOC entry 4677 (class 2606 OID 16510)
-- Name: Drivers Name; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "Name" UNIQUE ("DriverName");


--
-- TOC entry 4679 (class 2606 OID 16520)
-- Name: Seasons SeasonID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "SeasonID" UNIQUE ("SeasonID");


--
-- TOC entry 4683 (class 2606 OID 16518)
-- Name: SeasonRatings SeasonRatingID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonRatingID" UNIQUE ("SeasonRatingID");


--
-- TOC entry 4685 (class 2606 OID 16491)
-- Name: SeasonRatings SeasonRatings_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonRatings_pkey" PRIMARY KEY ("SeasonRatingID");


--
-- TOC entry 4681 (class 2606 OID 16455)
-- Name: Seasons Seasons_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "Seasons_pkey" PRIMARY KEY ("SeasonID");


--
-- TOC entry 4655 (class 2606 OID 16544)
-- Name: Series SeriesID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "SeriesID" UNIQUE ("SeriesID");


--
-- TOC entry 4657 (class 2606 OID 16546)
-- Name: Series SeriesName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "SeriesName" UNIQUE ("SeriesName");


--
-- TOC entry 4659 (class 2606 OID 16402)
-- Name: Series Series_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "Series_pkey" PRIMARY KEY ("SeriesID");


--
-- TOC entry 4663 (class 2606 OID 16542)
-- Name: Tracks TrackName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "TrackName" UNIQUE ("TrackName");


--
-- TOC entry 4665 (class 2606 OID 16409)
-- Name: Tracks Tracks_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "Tracks_pkey" PRIMARY KEY ("TrackID");


--
-- TOC entry 4690 (class 2606 OID 16499)
-- Name: SeasonRatings DriverID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "DriverID" FOREIGN KEY ("DriverID") REFERENCES main."Drivers"("DriverID") NOT VALID;


--
-- TOC entry 4691 (class 2606 OID 16492)
-- Name: SeasonRatings SeasonID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonID" FOREIGN KEY ("SeasonID") REFERENCES main."Seasons"("SeasonID");


--
-- TOC entry 4686 (class 2606 OID 16559)
-- Name: Events SeasonID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "SeasonID" FOREIGN KEY ("SeasonID") REFERENCES main."Seasons"("SeasonID") NOT VALID;


--
-- TOC entry 4689 (class 2606 OID 16456)
-- Name: Seasons SeriesID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "SeriesID" FOREIGN KEY ("SeriesID") REFERENCES main."Series"("SeriesID");


--
-- TOC entry 4687 (class 2606 OID 16549)
-- Name: Events SeriesID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "SeriesID" FOREIGN KEY ("SeriesID") REFERENCES main."Series"("SeriesID") NOT VALID;


--
-- TOC entry 4688 (class 2606 OID 16554)
-- Name: Events TrackID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "TrackID" FOREIGN KEY ("TrackID") REFERENCES main."Tracks"("TrackID") NOT VALID;


-- Completed on 2023-11-16 07:24:37

--
-- PostgreSQL database dump complete
--

