#!/usr/bin/python3
"""import modules"""
import requests


def number_of_subscribers(subreddit):
    """queries the Reddit API and returns the number of subscribers"""
    redditAPI = f'https://www.reddit.com/r/{subreddit}/about.json'
    header = {"User-Agent": "My-User-Agent"}
    reddits = requests.get(redditAPI, header, allow_redirects=False)
    if reddits.status_code >= 300:
        return (0)
    return (reddits.json()['data']['subscribers'])
