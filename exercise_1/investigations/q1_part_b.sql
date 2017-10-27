-- Q1 Part B
-- Compute the national average for each measure
create table dt_national_measures as
select measure_id, avg(score) as score_avg, stdev(score) as score_std
from tt_hospital_qos_measure
group by measure_id;

-- Create a z-score for each measure,  sum up the z-score, 
