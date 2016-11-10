#----------------------------------------------------------------------
#	To write a script file within a shell script:
#	Source:
#	http://askubuntu.com/questions/447150/create-write-and-save-file-from-a-shell-script
#----------------------------------------------------------------------
#!/bin/bash

var1="VALUE 1"
var2="VALUE 2"

cat > file1 << EOF1
do some commands on "$var1" 
and/or "$var2"
EOF1

cat > file2 << "EOF2"
do some commands on "$var1" 
and/or "$var2"
EOF2

#----------------------------------------------------------------------
#	To check if directory or file exists, in a shell script:
#	Source:
#	http://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
#----------------------------------------------------------------------
if [ -d /Users/$USER/Desktop/Directory ] ; then
#Things to do if the directory exists
fi

#If directory does not exist
if [ ! -d directory/path to a directory ] ; then
#Things to do if directory does not exist
fi


#If filedoes not exist
if [ ! -f /Users/$USER/Desktop/Directory/filename.ext ] ; then
#Things to do if file does not exist
fi