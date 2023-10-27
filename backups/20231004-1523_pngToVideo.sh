#!/bin/bash

# Check if all required arguments are provided
if [ $# -lt 3 ]; then
  echo "Usage: $0 <input_folder> <output_folder> <#background_color>"
  exit 1
fi

# Assign arguments to variables
input_folder="$1"
output_folder="$2"
background_color="$3"

# Check if the output folder exists
if [ -d "$output_folder" ]; then
  echo "Output folder already exists. Please provide a different folder name."
  exit 1
fi

# Create the output folder
mkdir -p "$output_folder"

# Iterate over each PNG file in the input folder
for file in "$input_folder"/*.png; do
  # Get the filename and extension
  filename=$(basename "$file")
  extension="${filename##*.}"

  # Generate the modified filepath in the output folder
  modified_filepath="$output_folder/$filename"

  # Apply the background color to the PNG file
  magick "$file" -background "$background_color" -alpha background -flatten "$modified_filepath"

  echo "Processed: $filename"
done

# Generate the video using FFmpeg
output_video="$output_folder/output.mp4"
ffmpeg -framerate 30 -i "$output_folder/%04d.png" -c:v libx264 -pix_fmt yuv420p "$output_video"

echo "Video generated: $output_video"
