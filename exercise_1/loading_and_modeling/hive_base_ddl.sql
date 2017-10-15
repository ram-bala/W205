DROP TABLE hcahps_hospital;
CREATE EXTERNAL TABLE hcahps_hospital (
id string,
name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
hcahps_measure_id string,
hcahps_question string,
hcahps_answer_description string,
patient_survey_star_rating string,
patient_survey_star_rating_footnote string,
hcahps_answer_percent string,
hcahps_answer_percent_footnote string,
hcahps_linear_mean_value string,
number_of_completed_surveys string,
number_of_completed_surveys_footnote string,
survey_response_rate_percent string,
survey_response_rate_percent_footnote string,
measure_start_date string,
measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/hcahps_hospital/';

DROP TABLE comp_deaths_hospital;
CREATE EXTERNAL TABLE comp_deaths_hospital (
id string,
name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
measure string,
measure_id string,
vs_national string,
denominator string,
score string,
lower_estimate string,
higher_estimate string,
footnote string,
measure_start_date string,
measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/comp_deaths_hospital';
DROP TABLE hospitals_gen_info;
CREATE EXTERNAL TABLE hospitals_gen_info (
id string,
name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
type string,
ownership string,
emergency string,
ehr_use string,
rating string,
fn_rating string,
mortality string,
mortality_fn string,
safety string,
safety_fn string,
readmission string,
readmission_fn string,
patient_experience string,
patient_experience_fn string,
effectiveness string,
effectiveness_fn string,
timeliness string,
timeliness_fn string,
imaging string,
imaging_fn string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/hospitals_gen_info';


