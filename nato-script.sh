#!/bin/sh

# Check if 'play' command is installed on the system
if ! [ -x "$(command -v play)" ]; then
    echo 'Error: play command not installed.' >&2
    echo 'Try: sudo apt install sox'
  exit 1
fi

first_character=true

/usr/bin/od \
    --address-radix=n \
    --format=x1 \
    --width=1 \
    --output-duplicates \
    | while read c
do
    "$first_character" || sleep .5
    first_character=false
    tail --lines=+28 "$0" | tar --gunzip --extract --file=- --to-command="play -" "oggs/$c.ogg" 2> /dev/null
done

# Avoid executing payload below
exit 0

# This should be line number 27 (counting from 1)
