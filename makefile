all: README.md

README.md:
	echo "# **Guessing Game** "  > README.md
	echo "## **Welcome to my Guessing Game!**" >>README.md
	echo "### How to play the game : " >>README.md
	echo "- You can start the game by entering **bash guessinggame.sh** into the console." >>README.md
	echo "- You will be asked to guess and enter how many **files** are in the current directory" >>README.md
	echo "- Follow the instructions on console as you proceed with the guessing game." >>README.md
	echo  " " >>README.md
	echo "## Enjoy my Guessing Game !!!" >>README.md
	echo " " >>README.md
	echo "### Date and Time :">>README.md
	date >>README.md
	echo " " >>README.md
	echo "### Number of lines of Code:" >>README.md
	cat guessinggame.sh|wc -l >> README.md

clean:
	rm README.md
