#!/bin/bash

# Command line option
if [ "$#" -eq 1 ]; then
    idx=$(date -d "$1" +%s)
    dateString=$1
else
    idx=0
    dateString=$(date +%F)
fi



# Define the URL of the Bing image of the day
bing="https://www.bing.com/HPImageArchive.aspx?format=js&idx=$idx&n=1"
echo $bing

# Fetch the JSON data from the URL
json=$(curl -s "$bing")
if [ "$(echo "$json" | grep -c '"images":\[\]')" -eq 1 ]; then
  echo "Error: No image found for the specified date."
  exit 1
fi

# Extract the URL of the image from the JSON data
url=$(echo "$json" | grep -o '"url":"[^"]*"' | sed 's/"url":"\([^"]*\)"/\1/')

# Prefix the URL with "https://www.bing.com" to get the full URL of the image
url="https://www.bing.com$url"

# Extract the description
description=$(echo "$json" | grep -o '"copyright":"[^"]*"' | sed 's/"copyright":"\([^"]*\)"/\1/')

# Download the image
outputDir=$HOME/Images/wallpapers
curl -s -o $outputDir/"$dateString.jpg" "$url"
echo "$description" > $outputDir/"$dateString.txt"

