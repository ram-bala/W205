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
tail -n +2 "/data/staging/exercise_1/HCAHPS - Hospital.csv" >/data/staging/exercise_1/hcahps_hospital_no_header.csv
echo "make directory in hdfs for hcahps_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/hcahps_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hcahps_hospital_no_header.csv /user/w205/exercise_1/hcahps_hospital/hcahps_hospital.csv
echo "Done putting file into hdfs for hcahps_hospital"
hdfs dfs -ls /user/w205/exercise_1/hcahps_hospital
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
tail -n +2 "/data/staging/exercise_1/Hospital General Information.csv" >/data/staging/exercise_1/hospitals_gen_info_no_header.csv
echo "make directory in hdfs for hospitals_gen_info"
hdfs dfs -mkdir /user/w205/exercise_1/hospitals_gen_info
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/hospitals_gen_info_no_header.csv /user/w205/exercise_1/hospitals_gen_info/hospitals_gen_info.csv
echo "Done putting file into hdfs for hospitals_gen_info"
hdfs dfs -ls /user/w205/exercise_1/hospitals_gen_info
tail -n +2 "/data/staging/exercise_1/Hospital Returns - Hospital.csv" >/data/staging/exercise_1/readmissions_hospital_no_header.csv
echo "make directory in hdfs for readmissions_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/readmissions_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/readmissions_hospital_no_header.csv /user/w205/exercise_1/readmissions_hospital/readmissions_hospital.csv
echo "Done putting file into hdfs for readmissions_hospital"
hdfs dfs -ls /user/w205/exercise_1/readmissions_hospital
tail -n +2 "/data/staging/exercise_1/Outpatient Imaging Efficiency - Hospital.csv" >/data/staging/exercise_1/outpatient_imaging_hospital_no_header.csv
echo "make directory in hdfs for outpatient_imaging_hospital"
hdfs dfs -mkdir /user/w205/exercise_1/outpatient_imaging_hospital
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/outpatient_imaging_hospital_no_header.csv /user/w205/exercise_1/outpatient_imaging_hospital/outpatient_imaging_hospital.csv
echo "Done putting file into hdfs for outpatient_imaging_hospital"
hdfs dfs -ls /user/w205/exercise_1/outpatient_imaging_hospital
tail -n +2 "/data/staging/exercise_1/" >/data/staging/exercise_1/_no_header.csv
echo "make directory in hdfs for "
hdfs dfs -mkdir /user/w205/exercise_1/
echo "putting file into hdfs..."
hdfs dfs -put /data/staging/exercise_1/_no_header.csv /user/w205/exercise_1//.csv
echo "Done putting file into hdfs for "
hdfs dfs -ls /user/w205/exercise_1/
