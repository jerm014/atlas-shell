import sys
from checker_functions import *

if not (exec_bash_compare("head -n 2 10-fizzbuzz | tail -1 | head -c 1", "#")):
    sys.exit(1)
