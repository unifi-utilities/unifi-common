#!/bin/bash

# UniFi Data Directory
DATA_DIR="/data"

## Store crontab files in ${DATA_DIR}/cronjobs/ (you will need to create this folder).
## This script will re-add them on startup.

cp ${DATA_DIR}/cronjobs/* /etc/cron.d/
# Older UDM's had crond, so lets check if its here if so use that one, otherwise use cron
if [ -x /etc/init.d/crond ]; then
    /etc/init.d/crond restart
elif [ -x /etc/init.d/cron ]; then
    /etc/init.d/cron restart
else
    echo "Neither crond nor cron found."
fi

exit 0
