all: README.md

README.md:
	echo "README.md file consists of the following :" > README.md
	echo "Title of the Project : Guessing Game "  >> README.md
	echo "Date and Time:">>README.md
	date >>README.md
	echo "Number of lines of Code:" >>README.md
	cat guessinggame.sh|wc -l >> README.md

clean:
	rm README.md
