#!/bin/bash

# Define the URL of the Bing image of the day
bing="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1"

# Fetch the JSON data from the URL
json=$(curl -s "$bing")

# Extract the URL of the image from the JSON data
url=$(echo "$json" | grep -o '"url":"[^"]*"' | sed 's/"url":"\([^"]*\)"/\1/')

# Prefix the URL with "https://www.bing.com" to get the full URL of the image
url="https://www.bing.com$url"

# Extract the description
description=$(echo "$json" | grep -o '"copyright":"[^"]*"' | sed 's/"copyright":"\([^"]*\)"/\1/')

# Download the image
outputDir=$HOME/Images/wallpapers
curl -s -o $outputDir/"$(date +%F).jpg" "$url"
echo "$description" > $outputDir/"$(date +%F).txt"

