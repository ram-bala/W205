-- part a:what hospitals are models of high quality care ; 
drop table q1_part_a;
create table q1_part_a as
select a.id, a.name, b.overall_rating
from tt_hospitals a join tt_hospital_qos_rating b on (a.id = b.id) 
where b.overall_rating = 5;

-- Q1 Part B
-- Which  hospitals have the most consistently high scores for a variety of measures (procedures).
-- Answer plan: 
-- 1. create z score for each measure at each hospital
-- 2. sum up z score for each hospital and divide by number of measures available at the hospital
-- 3. sort by highest average z score          
-- query plan
-- 1. Create a table of national averages and  standard deviations for each measure
-- 2. create z score table for each hospital/measure using their national avg and std deviations
-- 3. create a table that sums up the z score, finds the average per measure at each hospital, sorts by this value
--    and prints out the top 10.

drop table dt_national_measures;
create table dt_national_measures as
select measure_id, avg(d_score) as d_score_avg, stddev_pop(d_score) as d_score_std 
from tt_hospital_qos_measure_dir
group by measure_id;

-- now create a table with z score for each measure at each hospital
drop table dt_hospital_vs_nation;
create table dt_hospital_vs_nation as
select a.hospital_id, a.measure_id, (a.d_score-b.d_score_avg)/b.d_score_std as z_score
from tt_hospital_qos_measure_dir a, dt_national_measures b
where a.measure_id = b.measure_id
;

-- 3. create a table that sums up the z score, finds the average zscore of available measures at each hospital, sorts by this value

drop table q1_part_b;
create table q1_part_b as
select b.hospital_id, a.name, a.city, a.state,  b.avg_z_score, b.agg_z_score, b.stddev_z_score, b.num_measures
from tt_hospitals a, 
(select hospital_id, avg(z_score) as avg_z_score, sum(z_score) as agg_z_score, stddev_pop(z_score) as stddev_z_score,
        count(*) as num_measures
from dt_hospital_vs_nation
group by hospital_id
) b
where a.id = b.hospital_id
order by avg_z_score ASC
;

select * from q1_part_b
where num_measures > 20
limit 10;
