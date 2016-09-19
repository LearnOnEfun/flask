#!/bin/bash
#Author: allenke
#Date & Time: 2016-09-18 17:09:26
#Description: The script head.

if [[ -z "$1" ]];then
	newfile=~/newscript_`date +%m%d_%s`
else
	newfile=$1
fi
if ! grep "^#!" $newfile &> /dev/null;then
cat >> $newfile << EOF
#!/bin/bash
#Author: Inert Your Name here.
#Date & Time: `date +"%F %T"`
#Description: Please Edit here.
EOF
fi
vim +5 $newfile