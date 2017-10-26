DROP TABLE TT_MEASURES;
CREATE TABLE TT_MEASURES AS
SELECT id, name, st_qtr, end_qtr, st_date, end_dt as end_date
FROM measure_dates
;


