#!/bin/bash -v
#echo -e "#!/usr/bin/env bash\n# $3" > $2
chmod 755 $2
git add --all
git update-index --chmod=+x $2
git commit -m "$3"
git push
