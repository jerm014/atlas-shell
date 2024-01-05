#!/bin/bash
echo -e '#!/bin/bash\n$1' > $2
chmod 755 $2
git add --all
git commit -m "$2"
git push
