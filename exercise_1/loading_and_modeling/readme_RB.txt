How to use:
Step 1:  Verify the contents of list_of_files.txt
This file has a list of every file that needs to be loaded into HDFS.  It has the file name and the table name in HDFS separated by ";".
 Edit this flie to make sure that it has all the files that need to be loaded into HDFS and named appropriately.
Step 2: Execute load_data_lake.sh
Step 3: check hdfs dfs -ls /user/w205/exercise_1 to make sure that the files are there in hdfs
Step 4: For each file in HDFS, create a table (DDL - data definition language SQL) for each file in HDFS - these are in the hive_base_ddl.sql file.  
Run this file in Hive using hive -f <path>/hive_base_ddl.sql

Step 5: Run the hive_base_ddl_extra.sql file.  This loads the measure_direction.csv file - which is a file that has an indicator for each measure 
that indicates whether having a high value in the metric is "better" than lower values ( by a -1) OR having a lower value means it's better (with a +1).

