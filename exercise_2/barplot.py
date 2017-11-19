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

bar_val = range(0,len(records))
bar_labels = [rec[0] for rec in records]
bar_length = [rec[1] for rec in records]

plt.barh(bar_val, bar_length, align='center', alpha=0.5)
plt.yticks(bar_val, bar_labels)


plt.xlabel('Occurences')
plt.title('Number of Occurrences of the Top 20 Words')

plt.savefig('barplot.png')

conn.commit()
conn.close()
