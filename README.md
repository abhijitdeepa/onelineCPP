# onelineCPP
zsh script for running c++ files from your terminal by just typing their name

Instructions to run

1. Ensure that the linux shell is zsh by running echo $SHELL.If not change it to zsh.<br/>
2. copy paste the contents of the file function.txt or the below code block to the end of the ~/.zshrc file.<br/><br/><br/>
```
command_not_found_handler() { 
	if [[ $1 == *".cpp" ]]
	then
		rm -f out1;
		g++ $@ -std=c++17 -o out1 ;
		if [ -f out1 ]
		then

			echo $fg[red] "\n---------------------------\n";
			echo $fg[yellow];
			./out1;
			echo $fg[red] "\n---------------------------\n";
		else
			echo $fg[red] 'Fix errors and try again';
		fi
	else
		echo "Command Not Found";
		return 127;
	fi
}
```
<br/>
3. Thats it!!<br/>
4. Now run C++ files by just typing their name.<br/><br/>

# See Sample
<img src="https://raw.githubusercontent.com/abhijitdeepa/onelineCPP/main/Screen%20Shot%202022-06-06%20at%203.15.46%20AM.png"/>
