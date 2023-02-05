YY=yosys
IV=iverilog

all:
	build synth

build:
	$(IV) $(find . -name *.v)

synth:
	$(YY) synth.ys | tee ./log/synth.log
