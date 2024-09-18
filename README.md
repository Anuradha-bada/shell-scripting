cron jobs: Cron is a job scheduling utility present in Unix like systems. The crond daemon enables cron functionality and runs in background. 
Cron jobs help us automate our routine tasks, whether they're hourly, daily, monthly, or yearly.
sudo systemctl status cron.service

crontab -e: edits crontab entries to add, delete, or edit cron jobs
crontab -l: list all the cron jobs for the current user
crontab -u username -l: list another user's crons
crontab -u username -e: edit another user's crons

* * * * * sh /path/to/script.sh

	Value	Description
Minutes	0-59	Command would be executed at the specific minute
Hours	0-23	Command would be executed at the specific hour
Days	1-31	Commands would be executed in these days of the months
Months	1-12	The month in which tasks need to be executed
Weekdays	0-6	Days of the week where commands would run. Here, 0 is Sunday

ex: 30 4 * * 1-5 - run a script on weekdays at 4:30 AM

You can verify this from the cron logs located at var/log/cron or /var/log/syslog