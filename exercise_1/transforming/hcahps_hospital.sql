DROP TABLE TT_hospital_patient_survey;
CREATE TABLE TT_hospital_patient_survey AS
SELECT id, cast(number_of_completed_surveys as int)  as sample_size, cast(patient_survey_star_rating as int)  as patient_rating 
FROM hcahps_hospital
where hcahps_question = "Overall hospital rating - star rating"  and patient_survey_star_rating not like "Not%"
;

