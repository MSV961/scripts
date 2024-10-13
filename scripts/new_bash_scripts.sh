#! /bin/bash

# How to use: sudo bash new_bash_scripts.sh [name of file]
# This sctipt may use for create new scripts 
# this is ckeck that there is no file with the same name, and that create new file
set -e

filename=$1

cd ~/scripts/
if [[ -e $filename ]]; then
	vim $filename
else
	touch $filename
	chmod 755 $filename
	echo '#! /bin/bash' > $filename && echo 'set -e' >> $filename
	vim $filename
fi 



