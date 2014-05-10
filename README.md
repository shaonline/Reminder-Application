Reminder-Application
====================

It is reminder application written in PHP and uses MySQL for storage, for presentation i have used jquery ui tabs and datepicker.


Instructions:
•	A database with the name 'reminder' is required to be made and the reminder.sql file is required to be imported.
•	You can add a reminder in the future; if the reminder is added on the current date it will be treated as an expired reminder.
•	The ckeckreminder.php has to be set on CRON Jobs to execute daily when the date changes, it sends out mail as a reminder for those reminders only which are set on today's date.
•	There is ‘$to’ variable used in the same page, which has to be set to some value (an email address), so reminder can be sent to that address. 

Functionality:
You can,
•	add reminder (title, description and date)
•	edit reminder 
•	delete reminder

As requested 
•	It shows all reminders expired/non expired.
•	Only non-expired.

The page checkreminder.php sends out mail as reminder, if there is any reminder set on current date.
About application:
