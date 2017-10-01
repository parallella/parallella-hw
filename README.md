![alt tag](docs/parallella_logo_small.jpg)
PARALLELLA: Supercomputing for Everyone
========================================	

This repository contains open source board and FPGA designs associated with the Parallella project. 

## Directory

Board                                | Description                | CAD       | Status     |
-------------------------------------|----------------------------|-----------|------------|
[parallella](parallella/README.md)   | Parallella                 | Cadence   | Production |
[porcupine](porcupine/README.md)     | Parallella Breakout Board  | KiCad     | Production |
[meta](meta)                         | Epiphany 4096-core System  | Cadence   | Prototype  |
[buddy](buddy)                       | Epiphany-V Evaluation Board| Cadence   | Prototype  |
[paracase](paracase)                 | Aluminum Case              | SolidWorks| Production |
[parasdr](parasdr/README.md)         | SDR adapter Board          | Cadence   | Production |
[kvision](kvision/README.md)         | Stereo Vision Board        | Altium    | Prototype  |
[paralime](paralime)                 | Myriad-RF daughter Board   | KiCad     | Prototype  |
[paracluster](paracluster/README.md) | Cluster Board              | N/A       | Prototype  |
[paralib](paralib)                   | CAD librares               | Various   | Prouction  |
[paratemplate](paratemplate)         | Daugher Card Template      | KiCad     | Production |
[paratile](paratile/README.md)       | Breakout Board             | Eagle     | Prototype  |
[aafm](aafm/README.md)               | Epiphany-III FMC Board     | KiCad     | Production |
[archive](archive)                   | Old Parallella stuff       | N/A       | Obsolete   |

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


