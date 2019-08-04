#!/bin/python

import urllib.request
from bs4 import BeautifulSoup
import subprocess
import json
import sys

def usage_info():
    print("series_stream.py")
    print("================")
    print("Add a base link to the program and then run this script to choose an episode available at that link, and stream it.")
    print("Usage: series_stream.py [-a]")
    print("Options:")
    print("--------")
    print("-a: Add a new series. Can also be used to update an existing entry.")

def main():
    if(len(data_dict) == 0):
        print("series_stream.py: The series list is empty. Consider adding some using the -a option")
    series_list = data_dict["series"]
    last_watched = data_dict["last_watched"]
    
    if(len(sys.argv) == 2):
        if(sys.argv[1] == "-a"):
            new_series_name = input("Enter the name of the new series: ")
            new_series_link = input("Enter the base URL of the new series: ")
            new_series = {}
            new_series["base_url"] = new_series_link
            new_series["last_watched"] = 0
            series_list[new_series_name] = new_series
            
    elif(len(sys.argv) != 1):
        usage_info()
        exit(1)
    
    continue_last_watched = input("Last watched: {0}\nContinue?[Y/n]: ".format(last_watched))
    
    if(continue_last_watched == 'y' or continue_last_watched == 'Y' or continue_last_watched == ''):
        now_watching = last_watched
    else:
        for i, name in enumerate(series_list):
            print(i + 1, name)
        try:
            inp = int(input("Enter the series number: "))
            now_watching = list(series_list.keys())[inp - 1]
        except ValueError:
            print("series_stream.py: Series number must be an integer")
            exit(1)
        except IndexError:
            print("series_stream.py: The series number should be one among the ones shown above")
            exit(1)
    
    baseURL = series_list[now_watching]["base_url"]
    last_watched_episode = series_list[now_watching]["last_watched"]
    
    play_next_episode = input("Last watched episode {0}. Stream next episode?[Y/n]: ".format(last_watched_episode))
    
    response = urllib.request.urlopen(baseURL)
    soup = BeautifulSoup(response, "lxml")
    
    hrefs = [x['href'] for x in soup.find_all('a')[1:]]
    
    if(play_next_episode == 'y' or play_next_episode == 'Y' or play_next_episode == ''):
        episode = last_watched_episode + 1
    else:
        for i, link in enumerate(hrefs):
            print(i+1, link)
        try:
            episode = int(input("Select the episode number: "))
        except ValueError:
            print("series_stream.py: Episode number should be an integer")
            exit(1)
    try:
        episodeURL = baseURL + hrefs[episode-1]
    except IndexError:
        print("series_stream.py: Episode not found!")
        exit(1)
    
    data_dict["series"][now_watching]["last_watched"] = episode
    data_dict["last_watched"] = now_watching
    
    subprocess.call(["mpv", episodeURL])

if __name__ == '__main__':
    try:
        with open("/home/rwithik/.series_stream.json", 'r') as data_file:
            data_dict = json.load(data_file)

        main()
    finally:
        with open("/home/rwithik/.series_stream.json", 'w') as data_file:
            json.dump(data_dict, data_file)
