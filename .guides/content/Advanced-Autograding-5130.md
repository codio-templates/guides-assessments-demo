{Check It!|assessment}(test-1883631226)

## Reference Information
Code tests are simply scripts written in any language. In these examples bash has been used as it makes it easy to compile Java code and capture and compare program output with test cases.

The code test can be found in `test1/test.sh`. This example shows you how to write a basic test case. 

Firstly the bash script changes the working directory from the default `/home/codio/workspace` to the content folder.
`/home/codio/workspace/challenge1`

```
echo "<h3>Program Output</h3>"

cd /home/codio/workspace/challenge1
```

Then the Java program is compiled, and if a compilation error occurred the script exits. The compilation errors are sent to standard out and will be captured by Codio and show in the guide.

```
javac Challenge.java
if [ $? -ne 0 ]; then exit 1; fi
```

The test case calls the compiled Java program with arguments `10 20`, capturing the output and then tests this with the expected output.

```
OUTPUT1=("$(java Challenge 10 20)")
if [ $? -ne 0 ]; then exit 1; fi
echo "$OUTPUT1"

if [ "$OUTPUT1" != "Hello World 30" ]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi
```

### Source File Info

| Source code information|  |
| :------ | :----------- |
| Student code folder  | `challenge1/Challenge.java` |
| Test code folder  | `test1/test.sh` |
