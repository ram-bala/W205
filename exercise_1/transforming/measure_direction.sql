DROP TABLE TT_measure_direction;
CREATE TABLE TT_measure_direction AS
SELECT measure_id, cast(direction as int) as direction
FROM  measure_direction
;

