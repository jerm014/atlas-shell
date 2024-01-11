#!/bin/bash -v
echo -e "#!/bin/bash\n$1" > $2
chmod 755 $2
git add --all
git update-index --chmod=+x $2
git commit -m "$3"
git push
