How to use:
Step 1:  Verify the contents of list_of_files.txt
This file has a list of every file that needs to be loaded into HDFS.  It has the file name and the table name in HDFS separated by ";". Edit this flie to make sure that it has all the files that need to be loaded into HDFS and named appropriately.
Step 2:  Run the awk program "create_commands.awk" by issuing the following command:
awk -f create_commands.awk > load_files.sh
Step 3: Edit load_files_setup.sh and verify the contents.
This file is the "set up" script - it cleans up the Ex1Staging directory, Removes It, Creates a new Ex1Staging directory, downloads the remote zip file into this directory, unzips it.
Step 4: Execute load_files_setup.sh
Step 5: Execute load_files.sh
Step 6: check hdfs dfs -ls /user/w205/exercise_1 to make sure that the files are there in hdfs
Step 7: For each file in HDFS, create a table (DDL - data definition language SQL) for each file in HDFS - these are in the hive_base_ddl.sql file.  Run this file in Hive using hive -f <path>/hive_base_ddl.sql

