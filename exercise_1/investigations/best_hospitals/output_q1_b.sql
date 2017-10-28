insert overwrite local directory '/data/W205/exercise_1/investigations/best_hospitals/output_part_b'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
SELECT hospital_id, name, city, state, round(avg_z_score, 2), num_measures 
FROM q1_part_b 
where num_measures>20 
limit 10;
