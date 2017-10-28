#This file does 3 things
#1. Set up the directory structure to store the data
#2. Download the remote file
#3. Unzip the downloaded file into the data directory

#!/bin/bash

#save current directory
MY_DIR=$(pwd)
echo $MY_DIR
#create directory to stage the remote file
#if the directories exist, then remove them first
STAGE=/data/staging
EXER1=/data/staging/exercise_1

if [ -d "$EXER1" ]
then
	echo "$EXER1 exists"
	echo "removing all files"
	rm -rf "$EXER1"
	echo "done removing files"
fi
if [ ! -d "$STAGE" ] 
then
	echo "$STAGE doesn't exist"
	mkdir -p /data/staging/exercise_1
	echo "done creating staging/exercise_1 directory"
fi
if [ ! -d "$EXER1" ]  
then
	echo "$EXER1 doesn't exist"
	mkdir /data/staging/exercise_1
	echo "done creating exercise_1"
fi

#change dir to staging area
cd /data/staging/exercise_1

#get the remote file
wget "https://data.medicare.gov/views/bg9k-emty/files/e514828f-8ed2-445f-b49f-5ac11a58869d?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip" -O medicare.zip


#wget "https://data.medicare.gov/views/bg9k-emty/files/4a66c672-a92a-4ced-82a2-033c28581a90?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip" -O medicare.zip
touch medicare.zip

#unzip the file
if [ -e medicare.zip ] 
then
	unzip medicare.zip
	#create a data_status file in the directory that can be checked to make sure this file was executed in the loading script
	echo "Downloaded Data $(date)">Data_Status.txt
	echo "Successfully downloaded the file - OK to execute load_data_lake.sh script"
fi
cd $MY_DIR

