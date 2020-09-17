#!/bin/bash

# partial/partial-test.sh

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

if [ $OUTPUT1 -gt 66 ]; then
  curl -s "$CODIO_PARTIAL_POINTS_V2_URL" -d points=10 -d format=txt -d feedback="A grade: $OUTPUT1 points" > /dev/null
  exit 0
fi 
if [ $OUTPUT1 -gt 33 ]; then
  curl -s "$CODIO_PARTIAL_POINTS_V2_URL" -d points=5 -d format=txt -d feedback="B grade: $OUTPUT1 points"  > /dev/null
  exit 0
fi

curl -s "$CODIO_PARTIAL_POINTS_V2_URL" -d points=0 -d format=txt -d feedback="Fail: $OUTPUT1 points" > /dev/null
exit 1
