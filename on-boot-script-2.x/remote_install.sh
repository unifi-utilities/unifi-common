#!/bin/bash

echo ""
echo "############################################################"
echo "#                                                          #"
echo "#   NOTICE: This script has moved to a new repo!           #"
echo "#                                                          #"
echo "#   Old: github.com/unifi-utilities/unifios-utilities      #"
echo "#   New: github.com/unifi-utilities/unifi-common           #"
echo "#                                                          #"
echo "#   Please update your bookmarks/commands accordingly.     #"
echo "#                                                          #"
echo "############################################################"
echo ""
echo "Redirecting to the new script in 5 seconds..."
echo ""

sleep 5

echo "Running new script..."
echo ""

curl -fsL "https://raw.githubusercontent.com/unifi-utilities/unifi-common/HEAD/remote_install.sh" | /bin/bash