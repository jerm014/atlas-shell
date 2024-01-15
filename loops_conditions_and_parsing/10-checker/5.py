import sys
from checker_functions import *

if not (shellcheck(["10-fizzbuzz"])):
    sys.exit(1)
