echo "Removing HDFS directory and contents for exercise_1 " 
hdfs dfs -rm -r /user/w205/exercise_1
echo "Making directory exercise_1 in HDFS to host files "
hdfs dfs -mkdir /user/w205/exercise_1
echo "done making HDFS directory exercise_1"
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - Hospital.csv" >/data/staging/exercise_1/comp_deaths_hospital_no_header.csv
echo "make directory in hdfs for comp_deaths_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/comp_deaths_hospital_no_header.csv /user/w205/exercise_1/comp_deaths_hospital/comp_deaths_hospital.csv
echo "Done putting file into hdfs for comp_deaths_hospital"
hdfs dfs -ls /user/w205/exercise_1/comp_deaths_hospital
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - National.csv" >/data/staging/exercise_1/comp_deaths_national_no_header.csv
echo "make directory in hdfs for comp_deaths_national"
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_national
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/comp_deaths_national_no_header.csv /user/w205/exercise_1/comp_deaths_national/comp_deaths_national.csv
echo "Done putting file into hdfs for comp_deaths_national"
hdfs dfs -ls /user/w205/exercise_1/comp_deaths_national
tail -n +2 "/data/staging/exercise_1/Complications and Deaths - State.csv" >/data/staging/exercise_1/comp_deaths_state_no_header.csv
echo "make directory in hdfs for comp_deaths_state"
hdfs dfs -mkdir /user/w205/exercise_1/comp_deaths_state
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/comp_deaths_state_no_header.csv /user/w205/exercise_1/comp_deaths_state/comp_deaths_state.csv
echo "Done putting file into hdfs for comp_deaths_state"
hdfs dfs -ls /user/w205/exercise_1/comp_deaths_state
tail -n +2 "/data/staging/exercise_1/HCAHPS - Hospital.csv" >/data/staging/exercise_1/hcahps_hospital_no_header.csv
echo "make directory in hdfs for hcahps_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hcahps_hospital_no_header.csv /user/w205/exercise_1/hcahps_hospital/hcahps_hospital.csv
echo "Done putting file into hdfs for hcahps_hospital"
hdfs dfs -ls /user/w205/exercise_1/hcahps_hospital
tail -n +2 "/data/staging/exercise_1/HCAHPS - National.csv" >/data/staging/exercise_1/hcahps_national_no_header.csv
echo "make directory in hdfs for hcahps_national"
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_national
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hcahps_national_no_header.csv /user/w205/exercise_1/hcahps_national/hcahps_national.csv
echo "Done putting file into hdfs for hcahps_national"
hdfs dfs -ls /user/w205/exercise_1/hcahps_national
tail -n +2 "/data/staging/exercise_1/HCAHPS - State.csv" >/data/staging/exercise_1/hcahps_state_no_header.csv
echo "make directory in hdfs for hcahps_state"
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_state
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hcahps_state_no_header.csv /user/w205/exercise_1/hcahps_state/hcahps_state.csv
echo "Done putting file into hdfs for hcahps_state"
hdfs dfs -ls /user/w205/exercise_1/hcahps_state
tail -n +2 "/data/staging/exercise_1/hvbp_hcahps_11_10_2016.csv" >/data/staging/exercise_1/survey_no_header.csv
echo "make directory in hdfs for survey"
hdfs dfs -mkdir /user/w205/exercise_1/survey
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/survey_no_header.csv /user/w205/exercise_1/survey/survey.csv
echo "Done putting file into hdfs for survey"
hdfs dfs -ls /user/w205/exercise_1/survey
tail -n +2 "/data/staging/exercise_1/Measure Dates.csv" >/data/staging/exercise_1/measure_dates_no_header.csv
echo "make directory in hdfs for measure_dates"
hdfs dfs -mkdir /user/w205/exercise_1/measure_dates
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/measure_dates_no_header.csv /user/w205/exercise_1/measure_dates/measure_dates.csv
echo "Done putting file into hdfs for measure_dates"
hdfs dfs -ls /user/w205/exercise_1/measure_dates
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - Hospital.csv" >/data/staging/exercise_1/eff_care_hospital_no_header.csv
echo "make directory in hdfs for eff_care_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/eff_care_hospital_no_header.csv /user/w205/exercise_1/eff_care_hospital/eff_care_hospital.csv
echo "Done putting file into hdfs for eff_care_hospital"
hdfs dfs -ls /user/w205/exercise_1/eff_care_hospital
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - National.csv" >/data/staging/exercise_1/eff_care_national_no_header.csv
echo "make directory in hdfs for eff_care_national"
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_national
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/eff_care_national_no_header.csv /user/w205/exercise_1/eff_care_national/eff_care_national.csv
echo "Done putting file into hdfs for eff_care_national"
hdfs dfs -ls /user/w205/exercise_1/eff_care_national
tail -n +2 "/data/staging/exercise_1/Timely and Effective Care - State.csv" >/data/staging/exercise_1/eff_care_state_no_header.csv
echo "make directory in hdfs for eff_care_state"
hdfs dfs -mkdir /user/w205/exercise_1/eff_care_state
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/eff_care_state_no_header.csv /user/w205/exercise_1/eff_care_state/eff_care_state.csv
echo "Done putting file into hdfs for eff_care_state"
hdfs dfs -ls /user/w205/exercise_1/eff_care_state
tail -n +2 "/data/staging/exercise_1/Hospital General Information.csv" >/data/staging/exercise_1/hospitals_gen_info_no_header.csv
echo "make directory in hdfs for hospitals_gen_info"
hdfs dfs -mkdir /user/w205/exercise_1/hospitals_gen_info
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hospitals_gen_info_no_header.csv /user/w205/exercise_1/hospitals_gen_info/hospitals_gen_info.csv
echo "Done putting file into hdfs for hospitals_gen_info"
hdfs dfs -ls /user/w205/exercise_1/hospitals_gen_info
tail -n +2 "/data/staging/exercise_1/Hospital Returns - Hospital.csv" >/data/staging/exercise_1/readmissions_hospitals_no_header.csv
echo "make directory in hdfs for readmissions_hospitals"
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_hospitals
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/readmissions_hospitals_no_header.csv /user/w205/exercise_1/readmissions_hospitals/readmissions_hospitals.csv
echo "Done putting file into hdfs for readmissions_hospitals"
hdfs dfs -ls /user/w205/exercise_1/readmissions_hospitals
tail -n +2 "/data/staging/exercise_1/Hospital Returns - National.csv" >/data/staging/exercise_1/readmissions_national_no_header.csv
echo "make directory in hdfs for readmissions_national"
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_national
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/readmissions_national_no_header.csv /user/w205/exercise_1/readmissions_national/readmissions_national.csv
echo "Done putting file into hdfs for readmissions_national"
hdfs dfs -ls /user/w205/exercise_1/readmissions_national
tail -n +2 "/data/staging/exercise_1/Hospital Returns - State.csv" >/data/staging/exercise_1/readmissions_state_no_header.csv
echo "make directory in hdfs for readmissions_state"
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_state
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/readmissions_state_no_header.csv /user/w205/exercise_1/readmissions_state/readmissions_state.csv
echo "Done putting file into hdfs for readmissions_state"
hdfs dfs -ls /user/w205/exercise_1/readmissions_state
