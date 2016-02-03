# EXTERNALS

This directory is to hold checkouts of repositories from external sources that are needed to build our projects.

## Current external repos:

- 1  ADI HDMI IP:  https://github.com/analogdevicesinc/fpgahdl_xilinx

## Fetching content of external repos:

When this repo is cloned, there will be a directory for each external repository but initially it will be empty.
To populate it when needed, run the get_xxxx script for that repository, e.g. ./get_fpgahdl_xilinx.

## Adding external repos:

```
$ cd <root of local repository>
$ git submodule add <repository URL> fpga/externals/<name of repo>

# For example:

$ cd ../..
$ git submodule add https://github.com/analogdevicesinc/fpgahdl_xilinx fpga/externals/fpgahdl_xilinx
```
Then add a corresponding get_xxxx script and optionally a list of directories to include if doing a sparse checkout.
Add those files to git, and commit the new setup.

# NOTES

Do not make any changes to the external repository's files or folders from here, submodules are notoriously difficult to deal with if changes are made locally.

