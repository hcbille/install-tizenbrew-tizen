#!/bin/bash

if [ -z "$1" ]; then
    echo "Please pass the IP address of your Samsung TV as part of the commandline arguments for this script.";
		exit 1;
fi

echo ""
echo ""
echo "	Thanks to https://github.com/reisxd/ for providing the pre-packaged TizenBrew builds!";
echo "	These builds can be found at https://github.com/reisxd/TizenBrew";
echo ""
echo ""

TV_IP="$1";

echo "Attempting to connect to Samsung TV at IP address $TV_IP"
sdb connect $1

# work out the TV name by connecting to $TV_IP:8001/api/v2/ and getting .device.modelName with jq
echo "Attempting to get the TV name..."
TV_NAME=$(curl -s http://$TV_IP:8001/api/v2/ | jq -r '.device.modelName')

if [ -z "$TV_NAME" ]; then
    echo "We were unable to find the TV name.";
		exit 1;
fi
echo "Found TV name: $TV_NAME"

wget -q --show-progress https://github.com/reisxd/TizenBrew/releases/latest/download/TizenBrewStandalone-New.wgt



tizen install -n TizenBrewStandalone-New.wgt  -t "$TV_NAME"
