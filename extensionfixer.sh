#!/bin/bash

exiftool -ext "*" -r -m -overwrite_original -preserve "-filename<%f.\${FileTypeExtension}" "$1"
