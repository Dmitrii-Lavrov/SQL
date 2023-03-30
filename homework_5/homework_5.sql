CREATE OR REPLACE VIEW cost_lim AS
SELECT *
FROM cars
WHERE cost < 25000;

ALTER VIEW cost_lim AS
SELECT *
FROM cars
WHERE cost < 30000;

CREATE OR REPLACE VIEW name_fix AS
SELECT *
FROM cars
WHERE name in ("Skoda", "Audi");

SELECT
	train_id,
	station_time,
    timediff(LEAD(station_time, 1) OVER(PARTITION BY train_id), station_time)  AS "Время в пути"
FROM stations;