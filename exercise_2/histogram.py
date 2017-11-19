import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

if len(sys.argv) != 2:
    print "Usage: python histogram.py <k1>,<k2>  e.g. python histogram.py 3,4"
    exit(1)
a= sys.argv[1].split(",")[0]
b = sys.argv[1].split(",")[1]

if not(str.isdigit(a) and str.isdigit(b)):
    print "Usage: python histogram.py <k1>,<k2>  e.g. python histogram.py 4,14"
    exit(1)

k1 = min(int(a),int(b))
k2 = max(int(a),int(b))
print "k1=",k1, "k2=",k2

conn  = psycopg2.connect(database="tcount", user="postgres", password = "pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count FROM tweetwordcount WHERE count>=%s and count<=%s order by count DESC",(k1,k2))
records = cur.fetchall()
if len(records) == 0:
    print "No Words occurred between",k1, " and ", k2
else:
    for rec in records:
        print rec[0], " : ", rec[1]
conn.commit()
conn.close()
