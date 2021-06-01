#!/bin/bash
inputs()  {
	read -p "Enter two integers: " int1 int2
}
exitPrompt() {
	read -p "Do you wish to continue? [y]es or [n]o: " ans
	if [ $ans == 'n' ]
	then
		echo "Exiting the script. Have a nice day!"
		exit 0
	else
		return 0
	fi
}
while (true)
do
	clear
	printf "Choose from the following operations:  \n"
	printf "[a]Addition [b]Subtraction [c] Multiplication [d]Division \n"
	read -p "### Your choice: " choice
	case $choice in
		[aA])
			inputs
			res=$((int1+int2))
		;;
		[bB])
			inputs
			res=$((in1-int2))
		;;
		[cC])
			inputs
			res=$((int1*int2))
		;;
		[dD])
			inputs
			res=$((int1/int2))
		;;

		*)
			res=0
			echo "wrong choice!"
	esac
	echo "The result is: " $res
	exitPrompt
done
