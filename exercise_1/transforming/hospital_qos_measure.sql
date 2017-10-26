DROP TABLE TT_hospital_qos_measure;
CREATE TABLE TT_hospital_qos_measure AS
SELECT id as hospital_id, measure_id, measure_name, "Timely and Effective Care" as measure_category,
cast(score as decimal(10,1)) as score, cast(sample_size as decimal(10)) as sample_size,
footnote,measure_start_date, measure_end_date
FROM eff_care_hospital 
where score not like "Not%"
;

INSERT INTO TABLE tt_hospital_qos_measure 
SELECT id as hospital_id, measure_id, measure_name, "Readmissions" as measure_category, 
cast(score as decimal(10,1)) as score, cast(denominator as decimal(10)) as sample_size, footnote, 
measure_st_date as measure_start_date, measure_end_date
from readmissions_hospital
where score not like "Not%";

INSERT INTO TABLE tt_hospital_qos_measure 
SELECT id as hospital_id, measure_id, measure, "Complications and Deaths" as measure_category, 
cast(score as decimal(10,1)) as score, cast(denominator as decimal(10)) as sample_size, footnote, 
measure_start_date as measure_start_date, measure_end_date
from comp_deaths_hospital
where score not like "Not%";

INSERT INTO TABLE tt_hospital_qos_measure 
SELECT id as hospital_id, measure_id, measure_name, "Outpatient Imaging Efficiency" as measure_category, 
cast(score as decimal(10,1)) as score, 1 as sample_size, footnote, 
measure_st_date as measure_start_date, measure_end_date
from outpatient_imaging_hospital
where score not like "Not%";

