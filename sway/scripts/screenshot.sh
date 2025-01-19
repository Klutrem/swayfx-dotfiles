#!/bin/bash

# Set directories for saving screenshots
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

# Generate the filename with a timestamp
FILENAME="$SCREENSHOT_DIR/tmp_$(date +%Y-%m-%d_%H-%M-%S).png"

# Select a region, take a screenshot, and open it in swappy
REGION=$(slurp) || exit 1  # Exit if no region is selected
grim -g "$REGION" "$FILENAME" || exit 1

# Open the screenshot in swappy for editing
swappy -f "$FILENAME"

rm $FILENAME
