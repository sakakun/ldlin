# ldlin
A simple script to the alternative to LDWin (for Linux)

## Implementation
Write contents of script to the following file:
/usr/bin/ldlin

After run the following command to make it excutable:
chmod +x /usr/bin/ldlin

You may have to run as root depending on the elevation your are using.

## Usage
> ldlin

## Example Output

The following output just displays the packet content of the CDP and LLDP packets and thus you'll need to read through it depending on what is provided by the switch.

```
Please select from one of the following NIC devices:

enp44s0
enxc84bd6124705

Network Device: enxc84bd6124705

Please wait while we check for CDP/LLDP packets... To cancel press CTRL+C.

[sudo] password for matthew:           
tcpdump: listening on enxc84bd6124705, link-type EN10MB (Ethernet), snapshot length 1500 bytes
18:45:05.970910 CDPv2, ttl: 120s, checksum: 0x53f6 (unverified), length 444
	Device-ID (0x01), value length: 6 bytes: 'Switch'
	Version String (0x05), value length: 246 bytes: 
	  Cisco IOS Software, C3750 Software (C3750-IPSERVICESK9-M), Version 15.0(2)SE9, RELEASE SOFTWARE (fc1)
	  Technical Support: http://www.cisco.com/techsupport
	  Copyright (c) 1986-2015 by Cisco Systems, Inc.
	  Compiled Tue 01-Dec-15 07:02 by prod_rel_team
	Platform (0x06), value length: 23 bytes: 'cisco WS-C3750G-24TS-1U'
	Address (0x02), value length: 13 bytes: IPv4 (1) 10.0.220.254
	Port-ID (0x03), value length: 20 bytes: 'GigabitEthernet1/0/7'
	Capability (0x04), value length: 4 bytes: (0x00000028): L2 Switch, IGMP snooping
	Protocol-Hello option (0x08), value length: 32 bytes: 
	VTP Management Domain (0x09), value length: 0 bytes: ''
	Native VLAN ID (0x0a), value length: 2 bytes: 10
	Duplex (0x0b), value length: 1 byte: full
	AVVID trust bitmap (0x12), value length: 1 byte: 0x00
	AVVID untrusted ports CoS (0x13), value length: 1 byte: 0x00
	Management Addresses (0x16), value length: 13 bytes: IPv4 (1) 10.0.220.254
	unknown field type (0x1a), value length: 12 bytes: 
	  0x0000:  0000 0001 0000 0000 ffff ffff
	unknown field type (0x1f), value length: 1 byte: 
	  0x0000:  00
	unknown field type (0x1003), value length: 1 byte: 
	  0x0000:  31
1 packet captured
1 packet received by filter
0 packets dropped by kernel
```
