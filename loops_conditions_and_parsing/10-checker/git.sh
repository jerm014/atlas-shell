if GIT_TERMINAL_PROMPT=O git clone https://github.com/jerm014/atlas-shell.git /root/student_repo 1>/dev/null 2>&1 && cd /root/student_repo 1>/dev/null 2>&1 && echo "GIT URL: https://github.com/jerm014/atlas-shell.git
GIT USER ID: 8613
GIT COMMIT ID: $(git rev-parse HEAD)"; then
    exit 0
else
    exit 1
fi
