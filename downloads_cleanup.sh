#!/bin/bash

################################# Instructions / Environment ##########################################
### Pre-requisites / Environment: <Pre-requisites / Environment>

### To run on the CLI: 
### 1) <Step 1>

### To test: <Instructions>
### Developer notes: <Developer notes>
#####################################################################################################

DOWNLOADS="$HOME/Downloads"
SORTED="$DOWNLOADS"
 
for file in "$DOWNLOADS"/*; do
    if [[ $file == *.pdf ]]; then
        echo "found: $file"
        mv "$file" "$SORTED/pdf/"
    fi
 
    if [[ $file == *.jpg ]]; then
        echo "found: $file"
        mv "$file" "$SORTED/jpg/"
    fi
 
    if [[ $file == *.docx ]]; then
        echo "found: $file"
        mv "$file" "$SORTED/docx/"
    fi
 
    if [[ $file == *.png ]]; then
        echo "found: $file"
        mv "$file" "$SORTED/png/"
    fi
 
    if [[ $file == *.md ]]; then
        echo "found: $file"
        mv "$file" "$SORTED/md/"
    fi
 
done