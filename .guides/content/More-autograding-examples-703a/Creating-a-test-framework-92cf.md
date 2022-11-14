{Check It!|assessment}(test-1487677191)

## Reference information
This test is very similar to test1 but the script uses a home brewed testing library which has been extracted from the test1. This library `testlib.sh` allows us to easily write multiple tests cases. The the complete test code for test2 in `test2.sh` follows. The test library is loaded, a user program compiled and then multiple test cases are run.

```
. /home/codio/workspace/testlib.sh

start_java_test 'challenge2'
run_java_test '71 0' '71'
run_java_test '0 71' '71'
run_java_test '1 2' '3'
run_java_test '0 0' '0'
end_java_test
```


### Source file info

| Source code information|  |
| :------ | :----------- |
| Student code | `challenge2/Challenge.java` |
| Test Framework | `challenge2/testlib.sh` |
| Test code | `challenge2/framework-test.sh` |
