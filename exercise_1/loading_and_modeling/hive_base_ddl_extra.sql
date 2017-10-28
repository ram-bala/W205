DROP TABLE measure_direction;
CREATE EXTERNAL TABLE measure_direction (
measure_id string,
direction string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/measure_direction/';

