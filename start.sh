#!/bin/bash
# Remove original repo git folder
echo "start.sh -> Remove original .git folder"
rm -rf .git
# Init this project with version control and npm install
echo "start.sh -> Running git init and npm install"
if git init & npm install ; then
	echo "start.sh -> Project initialized; running npm start"
	if npm start ; then
		echo "start.sh -> Removing shell script"
		rm start.sh
	fi
else
	echo "start.sh -> Something wrong happen. Check logs and try again"
fi
