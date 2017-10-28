
-- alter the table and add a column called dir_score which will have the score values flipped
-- based on the direction in the measure_direction table.  This is to ensure that lower scores mean better for
-- for all scores.
--alter table tt_hospital_qos_measure add columns (d_score decimal(10,1));
merge into tt_hospital_qos_measure as h
using tt_measure_direction as d
on h.measure_id = d.measure_id
when matched then update set d_score = h.score*d.measure_direction
when not matched then set d_score = h.score
;


