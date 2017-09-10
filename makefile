number_of_lines=$$(wc -l guessinggame.sh)

README.md:
	touch README.md
	echo "# Guessing Game Read Me" > README.md
	echo "Date: `date +%Y-%m-%d.%H:%M:%S`  " >> README.md
	echo Number of Lines in guessinggame.sh: $$(wc -l < guessinggame.sh) >> README.md
