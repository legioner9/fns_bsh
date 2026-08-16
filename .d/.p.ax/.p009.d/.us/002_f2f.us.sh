l_00_echo_info "that :: 002_f2f.us.sh"
# res fl -> $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
# l_02_s2f :: $1 reciver_string: $2 inserter_string[@ - empty string] in reciver_result_file: $3

l_02_s2f {{fl_pth}} $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")  $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

# normalize pth

lfoe_path_to_var $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")