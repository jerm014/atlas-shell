import sys
from checker_functions import *

if not (file_contains_regex("10-fizzbuzz", patterns=["^#!/usr/bin/env bash"])):
    sys.exit(1)
