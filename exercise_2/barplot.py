import sys
import matplotlib.pyplot as plt
import numpy as np
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

#program to plot the top 20 words

conn  = psycopg2.connect(database="tcount", user="postgres", password = "pass", host="localhost", port="5432")
cur = conn.cursor()
cur.execute("SELECT word, count FROM tweetwordcount order by count DESC limit 20")
records = cur.fetchall()
print len(records)
x_val = [a for a in range(0,len(records))]
x = [rec[0] for rec in records]
y = [rec[1] for rec in records]

plt.barh(x_val,y)
plt.savefig('barplot.png')
conn.commit()
conn.close()
