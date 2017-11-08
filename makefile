all: README.md

README.md:
	echo "# Guessing game" >> README.md
	echo "" >> README.md
	echo "Readme was created at *$$(date)*" >> README.md
	echo "" >> README.md
	echo "The game contains **$$(wc -l guessinggame.sh|egrep -o '\d+')** lines of code" >> README.md

clean:
	rm README.md
