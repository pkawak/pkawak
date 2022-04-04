This readme is a guide on how to set up automatic daily backup on a linux computer

* Copy runEveryDay.sh to your home directly and replace <username> with your username (like from /home/username/)
```
cp /path/to/pkawak/onboard/backup/runEveryDay.sh ~/
sed -i "s/<username>/${USER}/g" ~/runEveryDay.sh
```
* Running the following will initiate the crontab service which allows automatic running of bash commands
```
sudo crontab -e
```
We run this with sudo so sudo rsync does not ask for a password.
* This will ask you to choose your favorite text editor. Do so and then add a line to the end of the file
```
30 0 * * * /home/pkawak/runEveryDay.sh
```
replacing pkawak with your username. What this tells crontab is at 12:30 am (30 0) every day of the week of the month (* * *), run /home/pkawak/runEveryDay.sh
* Optional: To check status of crontab, install postfix.
```
sudo apt install postfix
```
Now, running the following command shows the status of crontab commands.
```
sudo tail -f /var/mail/root
```
* Another way to check the status of your job is to run the top command and grep runEveryDay.sh
```
top -p $(pgrep -d',' runEveryDay.sh)
```
