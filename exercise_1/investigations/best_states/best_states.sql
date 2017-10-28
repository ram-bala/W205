-- query to create the list of 10 best states
-- Methodology: 
-- Find average z_score for all hospitals in ever state - include only hospitals with a minimum of 20 measures
-- List states in increasing order of the avg. z-scores limit to 10;

drop table best_states_list;
create table best_states_list as
select b.state, round(avg(a.avg_z_score),2) as avg_z_score, count(*) as num_hospitals
from q1_part_b a, tt_hospitals b
where a.hospital_id = b.id and a.num_measures > 20
group by b.state
order by avg_z_score ASC;


