#----------------------------------------------------------------------
#	Covers:
#		- How to use shell variables
#		- Using sed to search and replace
#		- How to copy files securely between machines
#----------------------------------------------------------------------


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
