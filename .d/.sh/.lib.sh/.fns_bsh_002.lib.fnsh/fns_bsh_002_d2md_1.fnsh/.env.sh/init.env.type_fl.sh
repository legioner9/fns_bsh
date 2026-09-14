#!/bin/bash

l_00_echo_sys "source $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/init.env.type_fl.sh"

declare -A fns_bsh_002_d2md_1_type_fl

fns_bsh_002_d2md_1_type_fl[0, 0]=png
fns_bsh_002_d2md_1_type_fl[0, 1]=pic
fns_bsh_002_d2md_1_type_fl[1, 0]=jpg
fns_bsh_002_d2md_1_type_fl[1, 1]=pic
fns_bsh_002_d2md_1_type_fl[2, 0]=svg
fns_bsh_002_d2md_1_type_fl[2, 1]=pic
fns_bsh_002_d2md_1_type_fl[3, 0]=cpd
fns_bsh_002_d2md_1_type_fl[3, 1]=cpd

l_00_echo_sys "set_of_arr :: fns_bsh_002_d2md_1_type_fl ::"
for ((i = 0; i < "$((${#fns_bsh_002_d2md_1_type_fl[@]} / 2))"; i++)); do
	for ((j = 0; j < 2; j++)); do
		l_00_echo_info "	fns_bsh_002_d2md_1_type_fl[$i,$j]=${fns_bsh_002_d2md_1_type_fl[$i, $j]}"
	done
done
