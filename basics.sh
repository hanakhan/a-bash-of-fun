#----------------------------------------------------------------------
#	Shell Variables
#----------------------------------------------------------------------
#If you want to save the output of a command within a shell variable:

varname=$(command)
#or
varname=`command`

	#ex:
	execpy=$(python file.py)
	execpy=`python file.py`


#To get the current date:

date +'%Y-%m-%d'

	#To store it as a variable:
	
	DATE=$(date +'%Y-%m-%d')
	echo $DATE

#----------------------------------------------------------------------
#	Using sed to search and replace
#----------------------------------------------------------------------

sed 's/search/replace/g' textfile.txt

#----------------------------------------------------------------------
#	Securely copy files between machines
#----------------------------------------------------------------------

#To receive file from a remote machine
scp username@remote:/file/to/send /where/to/put


#----------------------------------------------------------------------
#	Shell Script Style Guide:
#----------------------------------------------------------------------
#Source:
#	https://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf


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


#----------------------------------------------------------------------
#	For loops
#----------------------------------------------------------------------

names='Hana Eesa Chloe'

for name in $names
do
	echo $name
done
