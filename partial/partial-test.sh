#!/bin/bash

# partial/partial-test.sh

echo "<h3>Program Output</h3>"

# We change the directory on the linux box to the location of the student's file
cd /home/codio/workspace/partial

# compile the challenge
javac Challenge.java
# if java returned an error there was a compile error
# then exit the test
# java would have output the error to std out
if [ $? -ne 0 ]; then exit 1; fi


# run the progarm and see what number comes back
OUTPUT1=("$(java Challenge)")
# if there was a runtime error 
# then exit the test and show the captured output to the user 
if [ $? -ne 0 ]; then exit 1; fi
echo "$OUTPUT1"

if [ $OUTPUT1 -gt 66 ]; then
  echo "A grade"
  curl -s "$CODIO_PARTIAL_POINTS_URL&points=10" 
  exit 0
fi 
if [ $OUTPUT1 -gt 33 ]; then
  echo "B grade"
  curl -s "$CODIO_PARTIAL_POINTS_URL&points=5" 
  exit 0
fi

curl -s "$CODIO_PARTIAL_POINTS_URL&points=0" 
echo "Failed I'm afraid!"
exit 1