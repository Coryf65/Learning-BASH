#!/usr/bin/env bash

# create text file taking the users input as the filename
shebang="#!/usr/bin/env bash

"
# $1 - the first arg
if [[ -n $* ]]; then
    filename=$*
else
    read -p 'enter the new bash filename: ' filename
fi

# replace any slash "/" with a hyphen "-"
filename=${filename// /-}

# add file extension for me!
filename="$filename.sh"

echo "creating file '$filename'"

# add the base bash shebang text
echo "$shebang" > $filename

# chmod that very same file to be +x
chmod +x $filename

echo 'ready!'