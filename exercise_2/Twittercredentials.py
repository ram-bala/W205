import tweepy

consumer_key = "EkGI7y2AvXSPGuVBA47FlT0DT";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "Ch9PzKqOSBLKNqrvVnjNSAIJjFWmeOZ4N2kRtZppb3yJ2Q7nPo";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "2577612272-c5eH9mvMBtwJbi8AYbCcaotJtK60wJYsVauq2Oi";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "C1qv5kedg0UhKoH7oBLBHDq8HrdmZcUHBG89kKzssRGa6";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



