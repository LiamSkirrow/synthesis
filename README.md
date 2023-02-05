# Yosys Project Template
A template structure for synthesising a generic RTL project

## The plan for this repo
The intention is for this repo to serve as a generic synthesis flow for future RTL projects. It should include functionality for Icarus Verilog (to compile the RTL and check for syntax errors), as well as to run a simple synthesis flow using Yosys as the synthesis engine. 
This repo can then be checked out in any project structure as a git submodule. Maybe create a separate branch in this repo for each different project so that the synthesis flow can become tailored for that specific project rather than all projects pointing to the same synthesis flow.

## TODO:
- The current synth flow does not work, not sure why: getting the error message -> "ERROR: init_share_dirname: unable to determine share/ directory!" Need to fix this first and foremost.
- Get the iverilog (Icarus Verilog) build command to work, this is used to compile and syntax check the RTL itself before synthesis
- Add multiple .libs for different PDKs (SkyWater180nm, GF180nm etc...) and include in the Makefile a way to synthesise for different target libraries. For example: *make synth-SW180* etc... This would require some variable in the Makefile to set the lib path to the relevant .lib.
