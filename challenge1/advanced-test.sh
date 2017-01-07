#!/bin/bash

echo "<h3>Program Output</h3>"

# We change the directory on the linux box to the location of the student's file
cd /home/codio/workspace/challenge1

# compile the challenge
javac Challenge.java
# if java returned an error there was a compile error
# then exit the test
# java would have output the error to std out
if [ $? -ne 0 ]; then exit 1; fi


# test case 1
# run the progarm with input 10 20
OUTPUT1=("$(java Challenge 10 20)")
# if there was a runtime error 
# then exit the test and show the captured output to the user 
if [ $? -ne 0 ]; then exit 1; fi
echo "$OUTPUT1"

# check for the expected behavior
if [ "$OUTPUT1" != "Hello World 30" ]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi


echo "<br/><hr/><h3>Challenge Feedback</h3>"
echo "Well done you passed the challenge!"
exit 0
