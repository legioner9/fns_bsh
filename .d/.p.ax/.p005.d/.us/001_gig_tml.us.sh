# treat .p001 as function code
l_00_echo_code "fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p001 $(eval "echo \$dr_pth_fn_${rnd}")/.p002/fl_nm.tml"

# fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p001 \
# 	$(eval "echo \$dr_pth_fn_${rnd}")/.p002/fl_nm.tml

fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p001 \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

# cp -f $(eval "echo \$dr_pth_fn_${rnd}")/.p002/fl_nm.tml $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

## final treat .p002
# l_00_echo_code "fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p002 $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"

# fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p002 \
# 	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

# add common code
# fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
# 	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

l_00_echo_warn "fns_bsh_001_df2f $(eval "echo \$arg_3_fn_${rnd}") $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
fns_bsh_001_df2f $(eval "echo \$arg_3_fn_${rnd}") \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

# add domain code

if [[ -n "$(eval "echo \$arg_4_fn_${rnd}")" ]]; then
	l_00_echo_warn "fns_bsh_001_df2f $(eval "echo \$arg_4_fn_${rnd}") $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
	fns_bsh_001_df2f $(eval "echo \$arg_4_fn_${rnd}") \
		$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
fi
