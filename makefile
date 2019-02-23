README.md: guessinggame.sh
	touch README.md
	echo "# title of project:guess sign game" > README.md
	echo "### date and time at which make was run:" >> README.md
	date >> README.md
	echo "### number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	

	
