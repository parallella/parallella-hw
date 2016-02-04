![alt tag](docs/parallella_logo_small.jpg)
PARALLELLA: Supercomputing for Everyone
========================================	

This repository contains open source board and FPGA designs associated with the Parallella project. 

## Board Designs

Board                                | Description             | CAD     | Status     |
-------------------------------------|-------------------------|---------|------------|
[daughtercard](daughtercard)         | Daugher Card Template   | KiCad   | Production |
[library](library)                   | CAD librares            | Various | Done       |
[meta](meta)                         | PCI 104 board           | N/A     | Concept    |
[para-tile](para-tile/README.md)     | Simple breakout board   | Eagle   | Prototype  | 
[parallella](parallella/README.md)   | Kickstarter Parallella  | Allegro | Production |
[parallella-rf](parallella-rf)       | RF board (wip)          | Pads    | Concept    | 
[parallella-fmc](parallella-fmc)     | FMC SDR adapter board   | Allegro | Production |
[parallella-4k](parallella-4k)       | Server sized Parallella | N/A     | Concept    |
[porcupine](porcupine)               | Breakout board          | KiCad   | Production |

## FPGA Design Sources
All Parallella related FPGA sources have been moved to the [OH! library](https://github.com/parallella/oh/tree/master/parallella) library and released under MIT license.

## License
Board design files are released under the Creative Common Share Alike license.

## Contribution
We are looking for external contribution to to the Parallella project! If you have something to contribute in the area of board, system, FPGA design, dig in! All pull requests will be considered. Instructions for contributing can be found [HERE](CONTRIBUTING.md).

## How to do a pull-requeste

1. Fork this repository to your personal github account using the 'fork' button 2. above
3. Clone your 'parallella-hw' fork to a local computer using 'git clone'
4. Create a new sub-directory at the root of the repo
5. Add your project files with the appropriate license clearly stated
6. Add a README.md file (see the skeleton directory for a template)
7. Use git add-->git commit-->git push to add changes to your fork of 'parallella-examples'
8. Submit a pull request by clicking the 'pull request' button on YOUR github 'parallella-examples' repo.


