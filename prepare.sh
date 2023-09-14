#!/bin/bash

currentDate=$(date -u +%Y-%m-%d-%H:%M:%S)
scratchDir="/tmp/${currentDate}"
if [ ! -f "${scratchDir}" ]; then
	mkdir "${scratchDir}"
	mv ~/Downloads/*.ics "${scratchDir}"
	cat ./before.txt > "${currentDate}.ics"
	sed -n '/^BEGIN:VEVENT/,/^END:VEVENT/p' "${scratchDir}"/*.ics >> "${currentDate}.ics"
  # Extract the station codes from the summary
  # Using the first capture group like a lookbehind
  sed -i 's/\(SUMMARY:\).*Journey Details: .*(\(.*\)) to .*(\(.*\))/\1\2=>\3/g' "${currentDate}.ics"
	cat ./after.txt >> "${currentDate}.ics"
fi

