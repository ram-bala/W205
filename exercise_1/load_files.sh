tail -n +2 "Complications and Deaths - Hospital.csv" >comp_deaths_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_hospital
hdfs dfs -put comp_deaths_hospital_no_header.csv /user/w205/exercise_1/comp_deaths_hospital
tail -n +2 "Complications and Deaths - National.csv" >comp_deaths_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_national
hdfs dfs -put comp_deaths_national_no_header.csv /user/w205/exercise_1/comp_deaths_national
tail -n +2 "Complications and Deaths - State.csv" >comp_deaths_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_state
hdfs dfs -put comp_deaths_state_no_header.csv /user/w205/exercise_1/comp_deaths_state
tail -n +2 "HCAHPS - Hospital.csv" >hcahps_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_hospital
hdfs dfs -put hcahps_hospital_no_header.csv /user/w205/exercise_1/hcahps_hospital
tail -n +2 "HCAHPS - National.csv" >hcahps_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_national
hdfs dfs -put hcahps_national_no_header.csv /user/w205/exercise_1/hcahps_national
tail -n +2 "HCAHPS - State.csv" >hcahps_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_state
hdfs dfs -put hcahps_state_no_header.csv /user/w205/exercise_1/hcahps_state
tail -n +2 "hvbp_hcahps_11_10_2016.csv" >survey_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/survey
hdfs dfs -put survey_no_header.csv /user/w205/exercise_1/survey
tail -n +2 "Measure Dates.csv" >measure_dates_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/measure_dates
hdfs dfs -put measure_dates_no_header.csv /user/w205/exercise_1/measure_dates
tail -n +2 "Timely and Effective Care - Hospital.csv" >eff_care_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_hospital
hdfs dfs -put eff_care_hospital_no_header.csv /user/w205/exercise_1/eff_care_hospital
tail -n +2 "Timely and Effective Care - National.csv" >eff_care_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_national
hdfs dfs -put eff_care_national_no_header.csv /user/w205/exercise_1/eff_care_national
tail -n +2 "Timely and Effective Care - State.csv" >eff_care_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_state
hdfs dfs -put eff_care_state_no_header.csv /user/w205/exercise_1/eff_care_state
tail -n +2 "Hospital General Information.csv" >hospitals_gen_info_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hospitals_gen_info
hdfs dfs -put hospitals_gen_info_no_header.csv /user/w205/exercise_1/hospitals_gen_info
tail -n +2 "Hospital Returns - Hospital.csv" >readmissions_hospitals_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_hospitals
hdfs dfs -put readmissions_hospitals_no_header.csv /user/w205/exercise_1/readmissions_hospitals
tail -n +2 "Hospital Returns - National.csv" >readmissions_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_national
hdfs dfs -put readmissions_national_no_header.csv /user/w205/exercise_1/readmissions_national
tail -n +2 "Hospital Returns - State.csv" >readmissions_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_state
hdfs dfs -put readmissions_state_no_header.csv /user/w205/exercise_1/readmissions_state
