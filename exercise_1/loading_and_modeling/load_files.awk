#Take a list of files (and new file names), strip off first line from file and save under new filename
BEGIN {FS=";";
	my_path = "/data/staging/exercise_1/";
	print "hdfs dfs -mkdir /user/w205/exercise_1";
}
#command to strip off the first line - headerline and redirect to the output file
{print "tail -n +2 \"" my_path $1 "\" >" my_path $2"_no_header.csv";
#command to create a directory in hdfs to house this file
print "hdfs dfs -mkdir /user/w205/exercise_1/" $2;
#command to put this file into hdfs
print "hdfs dfs -put " my_path $2"_no_header.csv /user/w205/exercise_1/" $2;
	}

