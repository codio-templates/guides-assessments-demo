#!/bin/bash

# called once at the start of the test
# changes directory to supplied first arg
# compiles code and checks for compile errors
function start_java_test {
  echo "<h3>Program Output</h3>"

  cd ${1}
  javac Challenge.java
  if [ $? -ne 0 ]; then exit 1; fi
}

# flag: has the first test case output been shown
FIRST=false

# $1: test arguments
# $2: expected program output
function run_java_test {
  OUTPUT=("$(java Challenge ${1})")
  if [ $? -ne 0 ]; then exit 1; fi
      
  # only display the first test case
  if [ "$FIRST" = false ]; then
    echo $OUTPUT
    FIRST=true
  fi
    
  if [ "$OUTPUT" != ${2} ]; then 
    echo "<br/><hr/><h3>Challenge Feedback</h3>"
    echo "Your code is not outputing the correct value"
    exit 1
  fi
}

# will only get called if all the tests passed
function end_java_test {
  echo "<hr/><h3>Challenge Feedback</h3>"
  echo "Well done you passed all test cases!"
  exit 0
}


