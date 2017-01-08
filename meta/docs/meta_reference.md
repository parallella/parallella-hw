Meta Reference Manual
============================================================

Overview
Meta Functional Description
 Epiphany Memory Map
 Elink Connectors
 Control Connector
 FMC Connector
 I2C Connector
 Parallella Connectors
 Clock Management
 Power Management
 System Reset Sequence
 Coordinate Dip Switch
 Cooling
 Mechanical Specifications
Warranty/Disclaimers
License

# Meta Functional Description

## Epiphany Memory Map

Each Epiphany chip in the Meta system has a unique memory range set through on-board resistors and the ROW/COLUMN coodinate set with dip-switches on the Meta-Carrier. The following table shows the offset of each core within the Meta System. To get the exact absolute address offset for an Epiphany core, add together the address module address, chip address, and core address.

For example, the offset address of core (0,0) in chip (0,2) on module (2,0) would be : 0x80800000

Table: Meta-System Memory Map

|Coordinate  | Module      | Chip       | Core        |
|:----------:|:-----------:|:----------:|:-----------:|
|(0,0)       | 0x00000000  | 0x00000000 | 0x00000000  |
|(0,1)       | 0x01000000  | 0x00400000 | 0x00100000  |
|(0,2)       | 0x02000000  | 0x00800000 | 0x00200000  |
|(0,3)       | 0x03000000  | 0x00C00000 | 0x00300000  |
|(1,0)       | 0x40000000  | 0x10000000 | 0x04000000  |
|(1,1)       | 0x41000000  | 0x10400000 | 0x04100000  |
|(1,2)       | 0x42000000  | 0x10800000 | 0x04200000  |
|(1,3)       | 0x43000000  | 0x10C00000 | 0x04300000  |
|(2,0)       | 0x80000000  | 0x20000000 | 0x08000000  |
|(2,1)       | 0x81000000  | 0x20400000 | 0x08100000  |
|(2,2)       | 0x82000000  | 0x20800000 | 0x08200000  |
|(2,3)       | 0x83000000  | 0x20C00000 | 0x08300000  |
|(3,0)       | 0xC0000000  | 0x30000000 | 0x0C000000  |
|(3,1)       | 0xC1000000  | 0x30400000 | 0x0C100000  |
|(3,2)       | 0xC2000000  | 0x30800000 | 0x0C200000  |
|(3,3)       | 0xC3000000  | 0x30C00000 | 0x0C300000  |

\newpage

## Elink Connectors

Each Meta-Module has four Epiphany-elink board to board connectors (north, east, west, south), with each connector supporting four independent bidirectional Epiphany elinks.
The Meta-Module connects to the Meta-Carrier as a tightly coupled sandwich. 

The Elink connector pinout is shown in the following tables.

Table: South and West Elink Connectors

| Pin # | Signal | Pin # | Signal | Pin # | Signal | Pin # | Signal |
|-------|--------|-------|--------|-------|--------|-------|--------|



## Control Connector

The reset and clocking signals for the Meta-Module is provided by the Meta-Carrier through the control connector.

# Meta Warranty/Disclaimers

THERE IS NO WARRANTY FOR THE DESIGN MATERIALS DESCRIBED IN THIS REFERENCE MANUAL, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE DESIGN MATERIALS “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE DESIGN MATERIALS IS WITH YOU. SHOULD THE DESIGN MATERIALS PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION. THE FOREGOING LIMITED WARRANTY IS THE EXCLUSIVE WARRANTY MADE BY SELLER TO BUYER AND IS IN LIEU OF ALL OTHER WARRANTIES, EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING ANY WARRANTY OF MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. EXCEPT TO THE EXTENT OF THE INDEMNITY SET FORTH ABOVE, NEITHER PARTY SHALL BE LIABLE TO THE OTHER FOR ANY INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES.

# License

This reference manual and all Meta board design files are licensed under the Creative Commons Attribution-Share Alike 3.0 License. To view a copy of this license, visit:

http://creativecommons.org/licenses/bysa/3.0/

All derivative works are to be attributed to Andreas Olofsson.




