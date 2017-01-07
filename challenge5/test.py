# challenge5/test.py

import sys
import subprocess
# called once at the start of the test
# changes directory to supplied first arg
# compiles code and checks for compile errors

def start_test(path):
  print("<h3>Program Output</h3>")
  try:
    output = subprocess.check_output("/tmp/assessment_test 1 2", shell=True)
  except subprocess.CalledProcessError as e:
    print(e.output)
    sys.exit(1)
  
  print(output)  
  if output != "Hello World 3":
    sys.exit(1)
    
def compile_test(path):
 try:
   output = subprocess.check_output("gcc " + path + " -o /tmp/assessment_test", shell=True)
 except subprocess.CalledProcessError as e:
   print("<h3>Compilation Fails</h3>")
   print "<pre>" + e.output + "</pre>"
   exit(1)
    
def run_test(path):
  compile_test(path)
  start_test(path)
  end_test

# will only get called if all the tests passed
def end_test():
  print("<hr/><h3>Challenge Feedback</h3>")
  print("Well done you passed all test cases!")
  exit(0)

if len(sys.argv) < 2:
  exit(1)
  
run_test(sys.argv[1])

