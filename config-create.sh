#!/bin/sh
FILE="config.json"
if [ ! -e $FILE ]; then
    radcast --setup > config.json
    chmod 777 config.json
fi