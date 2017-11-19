import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

if len(sys.argv) != 2:
    print "<word> arg missing, usage: python finalresults.py <word>"
    exit(1)
word = sys.argv[1]

conn  = psycopg2.connect(database="tcount", user="postgres", password = "pass", host="localhost", port="5432")
cur = conn.cursor()
cur.execute("SELECT word, count FROM tweetwordcount WHERE word = %s", (word,))
records = cur.fetchall()

if len(records) == 0:
    print "No occurrences of the word",word," was found"
else:
    for rec in records:
        print "Total number of occurences of ", rec[0], " : ", rec[1]
conn.commit()
conn.close()
