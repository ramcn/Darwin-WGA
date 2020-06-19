# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
sub_AA { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
sub_AC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
sub_AG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
sub_AT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
sub_CC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
sub_CG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
sub_CT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
sub_GG { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
sub_GT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
sub_TT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
sub_N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
gap_open { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
gap_extend { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
y_drop { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
align_fields { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
ref_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
query_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
ref_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 152
	offset_end 163
}
query_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 164
	offset_end 175
}
ref_seq { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 176
	offset_end 187
}
query_seq { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 188
	offset_end 199
}
tile_output { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 200
	offset_end 211
}
tb_output { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 212
	offset_end 223
}
}
dict set axilite_register_dict control $port_control


