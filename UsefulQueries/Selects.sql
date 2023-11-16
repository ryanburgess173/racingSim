SELECT * FROM information_schema.columns
WHERE table_name LIKE 'Seasons';

SELECT * FROM main."Seasons";
SELECT * FROM main."Series";
SELECT * FROM main."Tracks";

SELECT sea."Year", ser."Name"
FROM main."Seasons" sea
RIGHT OUTER JOIN main."Series" AS ser
ON sea."SeriesID"=ser."ID";
	
SELECT * FROM main."Events";

SELECT events."EventNumber", seasons."SeasonYear", events."EventName", tracks."TrackName", series."SeriesName"
FROM main."Events" events
INNER JOIN main."Seasons" seasons
ON events."SeasonID"=seasons."SeasonID"
INNER JOIN main."Tracks" tracks
ON events."TrackID"=tracks."TrackID"
INNER JOIN main."Series" series
ON series."SeriesID"=seasons."SeriesID"
ORDER BY events."EventNumber";