today != date
number != cat guessinggame.sh | wc -l 

all:  README.md

README.md: guessinggame.sh

	echo "## The Unix Workbench" > README.md
	echo "# Final Project" >> README.md
	date >> README.md
	echo "README.md created via make on $(today)" >> README.md
	echo "guessinggame.sh has $(number) lines of code." >> README.md
