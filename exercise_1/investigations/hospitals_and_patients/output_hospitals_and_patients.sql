insert overwrite local directory '/data/W205/exercise_1/investigations/hospitals_and_patients/output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
SELECT *
FROM patient_rating_and_qos
;