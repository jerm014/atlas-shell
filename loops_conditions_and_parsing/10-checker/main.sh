echo "DOCKER IMAGE BUILD TIMESTAMP: $(cat /utc_timestamp.txt)"
echo 'TASK 18503: FizzBuzz'
echo 'CHECK git: Clone git repository `https://github.com/jerm014/atlas-shell.git`'
echo 'COMMAND:
if GIT_TERMINAL_PROMPT=O git clone https://github.com/jerm014/atlas-shell.git /root/student_repo 1>/dev/null 2>&1 && cd /root/student_repo 1>/dev/null 2>&1 && echo "GIT URL: https://github.com/jerm014/atlas-shell.git
GIT USER ID: 8613
GIT COMMIT ID: $(git rev-parse HEAD)"; then
    exit 0
else
    exit 1
fi

```'
timeout 400s /bin/bash /root/checker/git.sh  2>&1
if [ $? -eq 0 ]; then
  echo "RESULT git: OK"
  echo "POINTS git: 0"
elif [ $? -eq 124 ]; then
  echo "RESULT git: TIMEOUT"
  echo "POINTS git: 0"
else
  echo "RESULT git: FAIL"
  echo "POINTS git: 0"
  exit 1
fi

echo 'CHECK 123839: File is present'
echo 'COMMAND:
files_exist(["10-fizzbuzz"])
```'
timeout 400s python3 /root/checker/1.py  2>&1
if [ $? -eq 0 ]; then
  echo "RESULT 123839: OK"
  echo "POINTS 123839: 0"
elif [ $? -eq 124 ]; then
  echo "RESULT 123839: TIMEOUT"
  echo "POINTS 123839: 0"
else
  echo "RESULT 123839: FAIL"
  echo "POINTS 123839: 0"
  exit 1
fi

echo 'CHECK 123840: Second line must be a comment'
echo 'COMMAND:
exec_bash_compare("head -n 2 10-fizzbuzz | tail -1 | head -c 1", "#")
```'
timeout 400s python3 /root/checker/2.py  2>&1
if [ $? -eq 0 ]; then
  echo "RESULT 123840: OK"
  echo "POINTS 123840: 0"
elif [ $? -eq 124 ]; then
  echo "RESULT 123840: TIMEOUT"
  echo "POINTS 123840: 0"
else
  echo "RESULT 123840: FAIL"
  echo "POINTS 123840: 0"
  exit 1
fi

