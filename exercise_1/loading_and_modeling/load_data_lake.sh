#What this file does:
# Checks to see if files are downloaded and exists
# if the files exist, nothing to do - otherwise, run the load_files_setup.sh script
# Next - run the awk script that creates the code to load all the files in the list_of_files.txt file
#

#!/usr/bin/bash 
MY_DIR=$(pwd)
DATASTATUSFILE=/data/staging/exercise_1/Data_Status.txt
if [ ! -e "$DATASTATUSFILE" ] 
then
	source ./load_files_setup.sh
fi
awk -f load_files.awk list_of_files.txt>load_files.sh
chmod +x load_files.sh
source ./load_files.sh
exit

