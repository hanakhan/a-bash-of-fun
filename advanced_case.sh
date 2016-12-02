#----------------------------------------------------------------------
#	Case Statements
#----------------------------------------------------------------------

#In Bash, case statements are like switch statements in C. They are not loops!
#Case statements will try to match the expression against each pattern.
#When a match is found, all statements will be executed until the ;;
#After the first match, the case will terminate.

echo "Do you want to proceed with the install?"
read yn

case $yn in
		[yY]* )
			echo "Installing now..." 
			;;
		[nN]* )
			echo "Exiting the program" 
			exit 1
			;;
		*) echo "Invalid input"
			;;
esac	#the way to end case statements -- case spelled backwards!
			



