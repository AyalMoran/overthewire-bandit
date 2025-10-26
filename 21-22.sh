#A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

cd /etc/cron.d/ 
ls -la
cat cronjob_bandit22
cat /usr/bin/cronjob_bandit22.sh
# Output of the above command is below
`#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv`
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

password:
tRae0UfB9v0UzbCdn9cY0gQnds9GF58Q