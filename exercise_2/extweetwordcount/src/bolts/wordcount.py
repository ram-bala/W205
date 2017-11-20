from __future__ import absolute_import, print_function, unicode_literals
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
from collections import Counter
from streamparse.bolt import Bolt

class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        self.conn  = psycopg2.connect(database="tcount", user="postgres", password = "pass", host="localhost", port="5432")
        cur = self.conn.cursor()
        #empty out the table first
        cur.execute("DELETE FROM tweetwordcount")
        

    def process(self, tup):
        word = str(tup.values[0])
        cur =  self.conn.cursor()
        # Increment the local count
        self.counts[word] += 1
        self.emit([word, self.counts[word]])

        #Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))
        
        if self.counts[word] > 1:
            cur.execute("UPDATE tweetwordcount SET count = count+1 where word = %s", (word,))
        else:
            cur.execute("INSERT INTO tweetwordcount (word, count) VALUES (%s,1)",(word,))
        self.conn.commit()

        
