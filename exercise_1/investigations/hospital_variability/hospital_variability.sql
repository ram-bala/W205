
-- Which (measures) procedures have the greatest variability between hospitals?
-- dt_hospital_vs_nation has zscore measure at each hospital - so i can use this directly

drop table measure_variability;
create table measure_variability as
select measure_id, measure_name,  round(stddev_pop(d_score)/avg(d_score),2) as cov_dscore
from tt_hospital_qos_measure_dir
group by measure_id, measure_name
order by cov_dscore DESC
;