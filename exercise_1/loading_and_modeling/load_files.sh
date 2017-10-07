hdfs dfs -mkdir /user/w205/exercise_1
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - Hospital.csv" >/data/staging/exercise_1/comp_deaths_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_hospital
hdfs dfs -put /data/staging/exercise_1/comp_deaths_hospital_no_header.csv /user/w205/exercise_1/comp_deaths_hospital
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - National.csv" >/data/staging/exercise_1/comp_deaths_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_national
hdfs dfs -put /data/staging/exercise_1/comp_deaths_national_no_header.csv /user/w205/exercise_1/comp_deaths_national
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - State.csv" >/data/staging/exercise_1/comp_deaths_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_state
hdfs dfs -put /data/staging/exercise_1/comp_deaths_state_no_header.csv /user/w205/exercise_1/comp_deaths_state
tail -n +2 "/data/staging/exercise_1/HCAHPS - Hospital.csv" >/data/staging/exercise_1/hcahps_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_hospital
hdfs dfs -put /data/staging/exercise_1/hcahps_hospital_no_header.csv /user/w205/exercise_1/hcahps_hospital
tail -n +2 "/data/staging/exercise_1/HCAHPS - National.csv" >/data/staging/exercise_1/hcahps_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_national
hdfs dfs -put /data/staging/exercise_1/hcahps_national_no_header.csv /user/w205/exercise_1/hcahps_national
tail -n +2 "/data/staging/exercise_1/HCAHPS - State.csv" >/data/staging/exercise_1/hcahps_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_state
hdfs dfs -put /data/staging/exercise_1/hcahps_state_no_header.csv /user/w205/exercise_1/hcahps_state
tail -n +2 "/data/staging/exercise_1/hvbp_hcahps_11_10_2016.csv" >/data/staging/exercise_1/survey_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/survey
hdfs dfs -put /data/staging/exercise_1/survey_no_header.csv /user/w205/exercise_1/survey
tail -n +2 "/data/staging/exercise_1/Measure Dates.csv" >/data/staging/exercise_1/measure_dates_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/measure_dates
hdfs dfs -put /data/staging/exercise_1/measure_dates_no_header.csv /user/w205/exercise_1/measure_dates
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - Hospital.csv" >/data/staging/exercise_1/eff_care_hospital_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_hospital
hdfs dfs -put /data/staging/exercise_1/eff_care_hospital_no_header.csv /user/w205/exercise_1/eff_care_hospital
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - National.csv" >/data/staging/exercise_1/eff_care_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_national
hdfs dfs -put /data/staging/exercise_1/eff_care_national_no_header.csv /user/w205/exercise_1/eff_care_national
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - State.csv" >/data/staging/exercise_1/eff_care_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_state
hdfs dfs -put /data/staging/exercise_1/eff_care_state_no_header.csv /user/w205/exercise_1/eff_care_state
tail -n +2 "/data/staging/exercise_1/Hospital General Information.csv" >/data/staging/exercise_1/hospitals_gen_info_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/hospitals_gen_info
hdfs dfs -put /data/staging/exercise_1/hospitals_gen_info_no_header.csv /user/w205/exercise_1/hospitals_gen_info
tail -n +2 "/data/staging/exercise_1/Hospital Returns - Hospital.csv" >/data/staging/exercise_1/readmissions_hospitals_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_hospitals
hdfs dfs -put /data/staging/exercise_1/readmissions_hospitals_no_header.csv /user/w205/exercise_1/readmissions_hospitals
tail -n +2 "/data/staging/exercise_1/Hospital Returns - National.csv" >/data/staging/exercise_1/readmissions_national_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_national
hdfs dfs -put /data/staging/exercise_1/readmissions_national_no_header.csv /user/w205/exercise_1/readmissions_national
tail -n +2 "/data/staging/exercise_1/Hospital Returns - State.csv" >/data/staging/exercise_1/readmissions_state_no_header.csv
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_state
hdfs dfs -put /data/staging/exercise_1/readmissions_state_no_header.csv /user/w205/exercise_1/readmissions_state