#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/nimbix/workspace/GACTX_bank3/vivado_rtl_kernel/GACTX_bank3_ex/imports/hls/prj/sol/.autopilot/db/a.g.bc ${1+"$@"}