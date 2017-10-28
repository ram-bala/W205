-- Q4: Are average scores for hospital quality correlated with patient survey?

-- Plan
-- Merge the hospital ratings from patient survey with the hospital scoring from analyzing the numbers
-- 

drop table patient_rating_and_qos;

create table patient_rating_and_qos as
select patient_rating, round(avg(avg_z_score),2) as avg_z_score, stddev_pop(avg_z_score) as stddev_z_score
from 
(select a.avg_z_score, b.patient_rating
from q1_part_b a, tt_hospital_patient_survey b
where a.hospital_id = b.id
) t2
group by patient_rating
;