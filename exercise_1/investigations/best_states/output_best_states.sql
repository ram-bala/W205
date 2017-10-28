insert overwrite local directory '/data/W205/exercise_1/investigations/best_states/output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
SELECT *
FROM best_states_list
limit 10;
