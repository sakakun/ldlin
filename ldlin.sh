#!/bin/bash
# Search for active NICs and allow user to pick one for it to listen for CDP or LLDP packets.
# Save file to /usr/bin/ldlin

echo "Please select from one of the following NIC devices:"
echo ""

# Alter the line below to either add or remove filters for NICs to list.  Currently "lo|vir|wl|vmnet|tun" devices are filtered out.
ip -br l | awk '$1 !~ "lo|vir|wl|vmnet|tun" { print $1}'
echo ""
echo -n "Network Device: "
read nicName
echo ""
echo "Please wait while we check for CDP/LLDP packets... To cancel press CTRL+C."
echo ""

# The following line was adapted from the following site: https://unixhealthcheck.com/blog?id=431
sudo tcpdump -nn -v -i $nicName -s 1500 -c 1 '(ether[12:2]=0x88cc or ether[20:2]=0x2000)'
