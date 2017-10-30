(ns tweetcount
    (:use     [streamparse.specs])
    (:gen-class))

(defn tweetcount [options]
  [
  	;; spout configuration
  	{"X-spout" (python-spout-spec
 	options
      		"spouts.sentences.Sentences"
      		["sentence"]
     		)	
 	}	
  	;; Bolts
  	{
  	;; bolt configuration 1
   	"Y-bolt" (python-bolt-spec
        options
		{"X-spout":shuffle}
		"bolts.parse.ParseTweet"
		["valid_words"]
   		:p 2
		)	
  	;; bolt configuration 2
  	"Z-bolt" (python-bolt-spec
  	options
		{"Y-bolt":all}
		"bolts.tweetcounter.TweetCounter"
		["word" "count"]
		)
   	 }	
  ]
)
