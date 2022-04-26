#!/usr/bin/python3
"""import modules"""
import requests

def top_ten(subreddit):
    """queries the Reddit API and prints titles of the first 10 hot posts"""
    redditAPI = 'https://www.reddit.com/r/{subreddit}/hot.json?limit=10'
    header = {"User-Agent": "My-User-Agent"}
    reddits = requests.get(redditAPI, header, allow_redirects=False)
    if reddits.status_code >= 300:
        return ("None")
    else:
        [print(child.get("data").get("title"))
        for child in reddits.json().get('data').get('children')]
