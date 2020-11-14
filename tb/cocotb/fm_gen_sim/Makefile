TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)

VERILOG_SOURCES = $(PWD)/../../../rtl/*.v


TOPLEVEL := fm_generator_wb_slave
MODULE   := fm_generator_wb_slave_tb

include $(shell cocotb-config --makefiles)/Makefile.sim
