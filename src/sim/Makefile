tb_file_name := $(word 2, $(MAKECMDGOALS))
work_dir = ./cache

$(tb_file_name):
	@:

ifeq ($(filter $(MAKECMDGOALS),run rungui),$(MAKECMDGOALS))
ifeq ($(tb_file_name),)
$(error Usage: make run <testbench_name>)
endif
endif

run:
	@if [ ! -d $(work_dir) ]; then \
		vlib $(work_dir); \
	fi
	vmap work $(work_dir)
	vlog $(tb_file_name).v +acc=rnpc -lint

rungui:
	make run;\
	vsim work.$(tb_file_name) -do "add wave /*; run -all;"

clean:
	rm -rf $(work_dir) transcript vsim.wlf
