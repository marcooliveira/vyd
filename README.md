# Video Tools Repository

This repository contains a set of scripts to assist in video processing tasks using FFmpeg. The scripts facilitate various operations such as video generation, video to PNG conversion, and PNG to video conversion.

## Scripts

### 1. `generateVideo.sh`

This script processes a given video file and generates new video files based on the specified parameters such as start time, end time, scaling, bitrate, and others.

#### Usage

```bash
./generateVideo.sh -i INPUTFILE -f FORMAT [-c CODEC] [-s STARTTIME] [-e ENDTIME] [-w WIDTH|-h HEIGHT] [-k KEYFRAME_DISTANCE] [-a AUTO_ALT_REF] [-l LAG_IN_FRAMES] BITRATE_PAIRS...
```
See the script file for more detailed usage instructions and examples.


2. `pngToVideo.sh``
This script processes a directory of PNG images, applies a specified background color, and generates a video file from the processed images.

Usage

```bash
./pngToVideo.sh <input_folder> <output_folder> <background_color>
```

3. `videoToPng.sh``
This script extracts frames from a given video file and saves them as PNG images in a specified directory.

Usage

```bash
./videoToPng.sh <input_video> <output_folder>
```

## Dependencies
- FFmpeg: These scripts require FFmpeg to be installed on your system.

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.