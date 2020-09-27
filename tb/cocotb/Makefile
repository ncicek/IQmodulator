TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)

VERILOG_SOURCES = $(PWD)/../../rtl/*.v


TOPLEVEL := dds
MODULE   := dds_tb

include $(shell cocotb-config --makefiles)/Makefile.sim
