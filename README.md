![alt tag](docs/parallella_logo_small.jpg)
PARALLELLA: Supercomputing for Everyone
========================================	

This repository contains open source board and FPGA designs associated with the Parallella project. 

## Directory

Board                                       | Description               | CAD       | Status     |
--------------------------------------------|---------------------------|-----------|------------|
[aafm](aafm/README.md)                      | Epiphany-III FMC Board    | KiCad     | Production |
[cluster](cluster/README.md)                | Parallella Cluster Board  | N/A       | Prototype  |
[kvision](kvision/README.md)                | UAV daughter Board        | Altium    | Prototype  |
[library](library)                          | CAD librares              | Various   | Prouction  |
[meta](meta)                                | Epiphany-III 16 Chip Board| Cadence   | Concept    |
[metapower](power)                          | Meta Power Board          | Cadence   | Concept    |
[paratile](para-tile/README.md)            | Breakout Board            | Eagle     | Prototype  | 
[parallella](parallella/README.md)          | Kickstarter Parallella    | Cadence   | Production |
[paracase](parallella-case)          | Parallella Aluminum Case  | SolidWorks| Production |
[paralime](parallella-lime)          | Myriad-RF daughter Board  | KiCad     | Prototype  |
[pararf](parallella-rf)              | RF board (wip)            | Pads      | Concept    | 
[parasdr](parallella-sdr/README.md)  | FMC SDR adapter Board     | Cadence   | Production |
[template](daughtercard)         | Daugher Card Template     | KiCad     | Production |
[porcupine](porcupine/README.md)            | Parallella Breakout Board | KiCad     | Production |

## FPGA Design Sources
All Parallella related FPGA sources have been moved to the [OH! library](https://github.com/parallella/oh) library and released under MIT license.

## License
Board design files are released under the Creative Common Share Alike license unlesss otherwise specified.

## How to do a pull-request

1. Fork this repository to your personal github account using the 'fork' button 2. above
3. Clone your 'parallella-hw' fork to a local computer using 'git clone'
4. Create a new sub-directory at the root of the repo
5. Add your project files with the appropriate license clearly stated
6. Add a README.md file (see the skeleton directory for a template)
7. Use git add-->git commit-->git push to add changes to your fork of 'parallella-examples'
8. Submit a pull request by clicking the 'pull request' button on YOUR github 'parallella-examples' repo.


