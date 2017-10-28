insert overwrite local directory '/data/W205/exercise_1/investigations/hospital_variability/output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
SELECT *
FROM measure_variability
limit 10;
