**For Check Settings :**
sudo logrotate -d /etc/logrotate.d/custom_logs
**🔹 To apply settings immediately:**
sudo logrotate -f /etc/logrotate.d/custom_logs
**🔹Give log_rotation.sh the authority to implement:**
chmod +x log_rotation.sh
**🔹Add it to cron to run it daily:**
crontab -e
**Then add:**
0 0 * * * /path/to/log_rotation.sh
