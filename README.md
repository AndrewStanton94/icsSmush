# ICS Smush

The [National Rail Enquiries Journey planner](https://ojp.nationalrail.co.uk/service/planjourney/search) previously let you export an ICS file. One for each train journey. But this functionality was lost in a redesign. [This version still works](https://tocojp.test.nationalrail.co.uk/service/planjourney/search).

[Google calendar](https://calendar.google.com/) lets you import a single ICS file at a time.

This script will extract the event information using `sed` and wrap it in the shared start and end chunks.

This is a quick script. Wanted to back it up and to create a repo using the github cli.
