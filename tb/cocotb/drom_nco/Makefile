TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)

VERILOG_SOURCES = $(PWD)/*.v


TOPLEVEL := drom_nco
MODULE   := drom_nco_tb

include $(shell cocotb-config --makefiles)/Makefile.sim
