#!/bin/bash
chmod 755 $1
git add --all
git commit -m "$1"
git push
