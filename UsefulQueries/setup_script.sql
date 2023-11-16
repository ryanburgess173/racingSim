--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.1

-- Started on 2023-11-16 18:23:55 EST

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

DROP DATABASE "racingSim";
--
-- TOC entry 3673 (class 1262 OID 24713)
-- Name: racingSim; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "racingSim" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';


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
-- TOC entry 6 (class 2615 OID 24714)
-- Name: main; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA main;


ALTER SCHEMA main OWNER TO postgres;

--
-- TOC entry 221 (class 1255 OID 24807)
-- Name: InsertEvent(); Type: PROCEDURE; Schema: main; Owner: postgres
--

CREATE PROCEDURE main."InsertEvent"()
    LANGUAGE sql
    AS $_$CREATE OR REPLACE PROCEDURE InsertEvent(
	id numeric,
	name character varying,
	series_id numeric,
	track_id numeric,
	season_id numeric,
	event_number numeric
)
language plpgsql
as $$
begin
	INSERT INTO main."Events"
		("EventID", "EventName", "SeriesID", "TrackID", "SeasonID", "EventNumber")
	VALUES
		(id, name, series_id, track_id, season_id, event_number);
		
	commit;
end;$$$_$;


ALTER PROCEDURE main."InsertEvent"() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 24715)
-- Name: Drivers; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Drivers" (
    "DriverID" numeric NOT NULL,
    "DriverName" character varying NOT NULL
);


ALTER TABLE main."Drivers" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24720)
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
-- TOC entry 217 (class 1259 OID 24725)
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
-- TOC entry 218 (class 1259 OID 24730)
-- Name: Seasons; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Seasons" (
    "SeasonID" numeric NOT NULL,
    "SeasonYear" numeric NOT NULL,
    "SeriesID" numeric NOT NULL
);


ALTER TABLE main."Seasons" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24735)
-- Name: Series; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Series" (
    "SeriesID" numeric NOT NULL,
    "SeriesName" character varying NOT NULL
);


ALTER TABLE main."Series" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24740)
-- Name: Tracks; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main."Tracks" (
    "TrackID" numeric NOT NULL,
    "TrackName" character varying NOT NULL
);


ALTER TABLE main."Tracks" OWNER TO postgres;

--
-- TOC entry 3662 (class 0 OID 24715)
-- Dependencies: 215
-- Data for Name: Drivers; Type: TABLE DATA; Schema: main; Owner: postgres
--

INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (1, 'Richard Petty');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (2, 'Bobby Allison');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (3, 'James Hylton');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (4, 'Cecil Gordon');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (5, 'Benny Parsons');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (6, 'Walter Ballard');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (7, 'Elmo Langley');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (8, 'John Sears');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (9, 'Dean Dalton');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (10, 'Ben Arnold');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (11, 'Frank Warren');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (12, 'Jabe Thomas');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (13, 'Bill Champion');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (14, 'Raymond Williams');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (15, 'Dave Marcis');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (16, 'Charlie Roberts');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (17, 'Henley Gray');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (18, 'J.D. McDuffie');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (19, 'Bobby Isaac');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (20, 'David Pearson');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (21, 'Joe Leonard');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (22, 'Bill Vukovich II');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (23, 'Roger McCluskey');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (24, 'Al Unser');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (25, 'Mark Donahue');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (26, 'Mike Hiss');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (27, 'Johnny Rutherford');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (28, 'Bobby Unser');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (29, 'Sam Sessions');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (30, 'Mike Mosley');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (31, 'Mario Andretti');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (32, 'Gary Bettenhausen');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (33, 'Wally Dallenbach Sr.');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (34, 'Salt Walther');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (35, 'Lee Kunzman');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (36, 'George Snider');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (37, 'Sam Posey');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (38, 'Lloyd Ruby');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (39, 'Mel Kenyon');
INSERT INTO main."Drivers" ("DriverID", "DriverName") VALUES (40, 'Art Pollard');


--
-- TOC entry 3663 (class 0 OID 24720)
-- Dependencies: 216
-- Data for Name: Events; Type: TABLE DATA; Schema: main; Owner: postgres
--



--
-- TOC entry 3664 (class 0 OID 24725)
-- Dependencies: 217
-- Data for Name: SeasonRatings; Type: TABLE DATA; Schema: main; Owner: postgres
--



--
-- TOC entry 3665 (class 0 OID 24730)
-- Dependencies: 218
-- Data for Name: Seasons; Type: TABLE DATA; Schema: main; Owner: postgres
--



--
-- TOC entry 3666 (class 0 OID 24735)
-- Dependencies: 219
-- Data for Name: Series; Type: TABLE DATA; Schema: main; Owner: postgres
--

INSERT INTO main."Series" ("SeriesID", "SeriesName") VALUES (2, 'USAC');
INSERT INTO main."Series" ("SeriesID", "SeriesName") VALUES (1, 'NASCAR Cup');


--
-- TOC entry 3667 (class 0 OID 24740)
-- Dependencies: 220
-- Data for Name: Tracks; Type: TABLE DATA; Schema: main; Owner: postgres
--

INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (1, 'Riverside International Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (2, 'Daytona International Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (3, 'Richmond Fairgrounds Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (4, 'Ontario Motor Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (5, 'North Carolina Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (6, 'Atlanta International Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (7, 'Bristol International Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (8, 'Darlington Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (9, 'North Wilkesboro Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (10, 'Martinsville Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (11, 'Talladega Superspeedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (12, 'Charlotte Motor Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (13, 'Dover Downs Interional Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (14, 'Michigan International Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (15, 'Texas World Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (16, 'Trenton Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (17, 'Nashville Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (18, 'Phoenix International Raceway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (19, 'Indianapolis Motor Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (20, 'Wisconsin State Fair Park Speedway');
INSERT INTO main."Tracks" ("TrackID", "TrackName") VALUES (21, 'Pocono International Raceway');


--
-- TOC entry 3483 (class 2606 OID 24746)
-- Name: Drivers DriverID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "DriverID" UNIQUE ("DriverID");


--
-- TOC entry 3485 (class 2606 OID 24748)
-- Name: Drivers Drivers_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "Drivers_pkey" PRIMARY KEY ("DriverID");


--
-- TOC entry 3489 (class 2606 OID 24750)
-- Name: Events EventID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "EventID" UNIQUE ("EventID");


--
-- TOC entry 3491 (class 2606 OID 24752)
-- Name: Events EventName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "EventName" UNIQUE ("EventName");


--
-- TOC entry 3493 (class 2606 OID 24754)
-- Name: Events Events_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY ("EventID");


--
-- TOC entry 3509 (class 2606 OID 24756)
-- Name: Tracks ID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "ID" UNIQUE ("TrackID");


--
-- TOC entry 3487 (class 2606 OID 24758)
-- Name: Drivers Name; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Drivers"
    ADD CONSTRAINT "Name" UNIQUE ("DriverName");


--
-- TOC entry 3499 (class 2606 OID 24760)
-- Name: Seasons SeasonID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "SeasonID" UNIQUE ("SeasonID");


--
-- TOC entry 3495 (class 2606 OID 24762)
-- Name: SeasonRatings SeasonRatingID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonRatingID" UNIQUE ("SeasonRatingID");


--
-- TOC entry 3497 (class 2606 OID 24764)
-- Name: SeasonRatings SeasonRatings_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonRatings_pkey" PRIMARY KEY ("SeasonRatingID");


--
-- TOC entry 3501 (class 2606 OID 24766)
-- Name: Seasons Seasons_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "Seasons_pkey" PRIMARY KEY ("SeasonID");


--
-- TOC entry 3503 (class 2606 OID 24768)
-- Name: Series SeriesID; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "SeriesID" UNIQUE ("SeriesID");


--
-- TOC entry 3505 (class 2606 OID 24770)
-- Name: Series SeriesName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "SeriesName" UNIQUE ("SeriesName");


--
-- TOC entry 3507 (class 2606 OID 24772)
-- Name: Series Series_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Series"
    ADD CONSTRAINT "Series_pkey" PRIMARY KEY ("SeriesID");


--
-- TOC entry 3511 (class 2606 OID 24774)
-- Name: Tracks TrackName; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "TrackName" UNIQUE ("TrackName");


--
-- TOC entry 3513 (class 2606 OID 24776)
-- Name: Tracks Tracks_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Tracks"
    ADD CONSTRAINT "Tracks_pkey" PRIMARY KEY ("TrackID");


--
-- TOC entry 3517 (class 2606 OID 24777)
-- Name: SeasonRatings DriverID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "DriverID" FOREIGN KEY ("DriverID") REFERENCES main."Drivers"("DriverID") NOT VALID;


--
-- TOC entry 3518 (class 2606 OID 24782)
-- Name: SeasonRatings SeasonID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."SeasonRatings"
    ADD CONSTRAINT "SeasonID" FOREIGN KEY ("SeasonID") REFERENCES main."Seasons"("SeasonID");


--
-- TOC entry 3514 (class 2606 OID 24787)
-- Name: Events SeasonID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "SeasonID" FOREIGN KEY ("SeasonID") REFERENCES main."Seasons"("SeasonID") NOT VALID;


--
-- TOC entry 3519 (class 2606 OID 24792)
-- Name: Seasons SeriesID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Seasons"
    ADD CONSTRAINT "SeriesID" FOREIGN KEY ("SeriesID") REFERENCES main."Series"("SeriesID");


--
-- TOC entry 3515 (class 2606 OID 24797)
-- Name: Events SeriesID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "SeriesID" FOREIGN KEY ("SeriesID") REFERENCES main."Series"("SeriesID") NOT VALID;


--
-- TOC entry 3516 (class 2606 OID 24802)
-- Name: Events TrackID; Type: FK CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main."Events"
    ADD CONSTRAINT "TrackID" FOREIGN KEY ("TrackID") REFERENCES main."Tracks"("TrackID") NOT VALID;


-- Completed on 2023-11-16 18:23:55 EST

--
-- PostgreSQL database dump complete
--

