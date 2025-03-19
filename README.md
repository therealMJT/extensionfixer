# extensionfixer
A bash script using exiftool to fix incorrect file extensions.

## Install
```
$ git clone https://github.com/therealMJT/extensionfixer.git
$ cd extensionfixer
```

## Usage
Basic Usage:
```
$ bash extensionfixer.sh <directory>
```
Recursively scans all files in directory and its subdirectories for files with incorrect extensions. Those files are then renamed to their correct extensions. Example: `IMG_5268.bloop -> IMG_5268.png`.

Supports the file types found in the table at [https://exiftool.org/](https://exiftool.org/).

**Note:** You may see errors such as "Unknown file type" and "File is empty." Those files are simply skipped over, and scanning continues.

## Requirements
* Linux / Bash
* [ExifTool](https://github.com/exiftool/exiftool)
