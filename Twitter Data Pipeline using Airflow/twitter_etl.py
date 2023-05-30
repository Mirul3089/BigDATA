from os import access
import tweepy
import pandas as pd
import json
from datetime import datetime
import s3fs
from pathlib import Path

def run_twitter_etl():

    access_key = ""
    access_secret = ""
    consumer_key = ""
    consumer_secret = ""

    #asking for a access using access keys and secret
    auth = tweepy.OAuthHandler(access_key, access_secret)

    #providing our consumer keys and secret
    auth.set_access_token(consumer_key, consumer_secret)

    #creating api object
    api = tweepy.API(auth)

    tweets = api.user_timeline(screen_name='@elonmusk',
                            count=200,
                            include_rts=False,#retweets
                            tweet_mode='extended')

    tweet_list = []
    for tweet in tweets:
        text = tweet._json["full_text"]

        refined_tweet = {"user": tweet.user.screen_name,
                        'text': text,
                        'favourite_count': tweet.favorite_count,
                        'retweet_count': tweet.retweet_count,
                        'created_at': tweet.created_at}
        tweet_list.append(refined_tweet)

    df=pd.DataFrame(tweet_list)
    filepath = Path("s3://test123/elon_data.csv")  
    df.to_csv(filepath)
