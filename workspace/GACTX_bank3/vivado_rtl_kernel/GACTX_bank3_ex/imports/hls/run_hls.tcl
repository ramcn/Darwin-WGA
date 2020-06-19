# This is a generated file. Use and modify at your own risk.
################################################################################

open_project prj
open_solution sol
set_part  xcu200-fsgd2104-2-e
add_files ../GACTX_bank3_cmodel.cpp
set_top GACTX_bank3
config_sdx -optimization_level none -target xocc
config_rtl -auto_prefix=0
csynth_design
exit

