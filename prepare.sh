#!/bin/bash
cat ./before.txt > ./out.ics
sed -n '/^BEGIN:VEVENT/,/^END:VEVENT/p' *.ics >> out.ics
cat ./after.txt >> ./out.ics
