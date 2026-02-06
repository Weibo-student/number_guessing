#!\bin\bash
answer=$(($RANDOM % 100 + 1))

ask_number() {
	echo "Guess A number(1 - 100)"
	read number
	if ! [[ "$number" =~ ^[0-9]+$ ]] || (( number <= 0 )); then
		clear
		echo "Invalid Input"
		ask_number
	fi

	if [[ $number -eq $answer ]]; then
		echo "You got the right number!"
		exit
	elif [[ $number < $answer ]]; then
		clear
		echo "Too low!"
		ask_number
	elif [[ $number > $answer ]]; then
		clear
		echo "Too high"
		ask_number
	fi
}


ask_number


