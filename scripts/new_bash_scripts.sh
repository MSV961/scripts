#! /bin/bash
set -e
set -u

filename=$1

cd ~/scripts/
if [[ -e $filename ]]; then
	vim $filename
else
	touch $filename
	chmod 755 $filename
	echo '#! /bin/bash' > $filename && echo 'set -e' >> $filename && echo 'set -u' >> $filename
	vim $filename
fi 



