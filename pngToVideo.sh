#!/bin/bash

# Check if all required arguments are provided
if [ $# -lt 3 ]; then
  echo "Usage: $0 <input_folder> <output_folder> <background_color>"
  exit 1
fi

# Assign arguments to variables
input_folder="$1"
output_folder="$2"
background_color="$3"

# Check if the output folder exists
if [ -d "$output_folder" ]; then
  echo "Output folder '$output_folder' already exists. Please provide a different folder name."
  exit 1
fi

# Create the output folder
mkdir -p "$output_folder"

# Initialize a counter for renaming files
counter=1

# Iterate over each PNG file in the input folder
for file in "$input_folder"/*.png; do
  
  # Generate the new filename and its path in the output folder
  # Using printf to format the counter as four digits
  new_filename=$(printf "%04d.png" "$counter")
  modified_filepath="$output_folder/$new_filename"

  # Apply the background color and flatten the PNG file using FFmpeg
  ffmpeg -i "$file" -vf "[0:v]split[a][b];[b]color=$background_color[c];[a][c]overlay" -c:v png "$modified_filepath"

  echo "Processed: $file as $new_filename"
  
  # Increment the counter
  ((counter++))
done

# Generate the video using FFmpeg
output_video="$output_folder/output.mp4"
ffmpeg -framerate 30 -i "$output_folder/%04d.png" -c:v libx264 -pix_fmt yuv420p "$output_video"

echo "Video generated: $output_video"
