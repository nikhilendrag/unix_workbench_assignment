all: README.md

README.md: guessinggame.sh
	echo "## Guessing game : An UNIX Workbench course assignment" > README.md
	echo "**Description**: Make a program *guessinggame.sh* which continuously asks user to guess number of files in the current directory"
	echo -n "**Make date : **" >> README.md
	date >> README.md
	echo -n "**Number of lines of code in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md

