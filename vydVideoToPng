#!/bin/bash

# Check if all required arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 <input_video> <output_folder>"
  exit 1
fi

# Assign arguments to variables
input_video="$1"
output_folder="$2"

# Check if the output folder exists
if [ -d "$output_folder" ]; then
  echo "Output folder '$output_folder' already exists. Please provide a different folder name."
  exit 1
fi

# Create the output folder
mkdir -p "$output_folder"

# Extract frames from the video using FFmpeg
ffmpeg -i "$input_video" "$output_folder/%04d.png"

echo "PNGs extracted to: $output_folder"

