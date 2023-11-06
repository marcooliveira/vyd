# Vyd — Video & Image Tools Repository

This repository contains a set of scripts to assist in video and image processing tasks. The scripts facilitate various operations such as video and image generation, video to PNG conversion, and PNG to video conversion.

## Scripts

### 1. `vydGenerateVideo`

This script processes a given video file and generates new video files based on the specified parameters such as start time, end time, scaling, bitrate, and others.

#### Usage

```bash
./vydGenerateVideo -i INPUTFILE -f FORMAT [-c CODEC] [-s STARTTIME] [-e ENDTIME] [-w WIDTH|-h HEIGHT] [-k KEYFRAME_DISTANCE] [-a AUTO_ALT_REF] [-l LAG_IN_FRAMES] BITRATE_PAIRS...
```
To get usage instructions, execute the script without any arguments: `./vydGenerateVideo`


### 2. `vydPngToVideo`
This script processes a directory of PNG images, applies a specified background color, and generates a video file from the processed images.

#### Usage

```bash
./vydPngToVideo <input_folder> <output_folder> <background_color>
```
To get usage instructions, execute the script without any arguments: `./vydPngToVideo`

### 3. `vydVideoToPng`
This script extracts frames from a given video file and saves them as PNG images in a specified directory.

#### Usage

```bash
./vydVideoToPng <input_video> <output_folder>
```
To get usage instructions, execute the script without any arguments: `./vydVideoToPng`

### 4. vydGenerateImage

This script processes a given image and generates new image based on the specified parameters.

#### Usage

```bash
./vydGenerateImage -i INPUT_IMAGE [-o OUTPUT_IMAGE] [-w WIDTH] [-h HEIGHT] [-of OBJECT_FIT] [-f FORMAT] [-q QUALITY]...
```
To get usage instructions, execute the script without any arguments: `./vydGenerateImage`

## Dependencies
- [FFmpeg](https://ffmpeg.org/): Required for video processing scripts.
- [ImageMagick](https://imagemagick.org/): Required for the image resizing script.

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.