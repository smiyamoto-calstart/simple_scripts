#!/bin/bash

################################# Rudimentary Instructions ##########################################
### Pre-requsite: This script may likely need to live in the directory in which your screenshots live.

### To run on the CLI: 
### 1) Try replacing <yourname> after with your name. That can be found with `pwd`.
### 2) Then run sh screenshot_cleanup.sh
### 2a) You should have gotten some kind of CLI-based output.

### To test: Create some sample screenshots via your method of choice and run the script.
### Knowledge of where your files live will help to ensure that what you need is not going to be
### moved somewhere unexpected. 
### Note: This script does not delete anything,
#####################################################################################################


function cleanup () {
    echo "This simple script cleans up your Desktop by moving screenshots to a dedicated folder. Cleaning..."
    STRING="Screenshot"
    DIRECTORY="/Users/<yourname>/Desktop/screenshots"
    for file in *;
        do 
            if [[ $file == *"$STRING"* ]]; 
                then 
                echo "Moving $file to $DIRECTORY" 
                mv "$file" "$DIRECTORY"
            fi 
        done
    echo "Cleanup is complete! Screenshots have been moved to $DIRECTORY."
}

cleanup