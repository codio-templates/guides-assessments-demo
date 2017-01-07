#!/bin/bash
# challenge2/framework-test.sh

cd /home/codio/workspace/challenge2
. testlib.sh

start_java_test '/home/codio/workspace/challenge2'
run_java_test '71 0' '71'
run_java_test '0 71' '71'
run_java_test '1 2' '3'
run_java_test '0 0' '0'
end_java_test
