insert overwrite local directory '/data/W205/exercise_1/investigations/best_hospitals/output_part_a'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
SELECT * FROM q1_part_a limit 10;
