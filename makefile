SHELL := /bin/bash

README.md: guessinggame.sh
	echo "*Guessing Game*" > README.md
#	history | egrep "[0-9]{2}:[0-9]{2}:[0-9]{2}\smake README.md"| tail -1 | egrep -o "[0-9]{2}/[0-9]{2}/[0-9]{2}\s[0-9]{2}:[0-9]{2}:[0-9]{2}" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
