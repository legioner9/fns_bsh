l_00_echo_info "that :: 001_gig_tml.us.sh"

# $(eval "echo \$dr_pth_fn${rnd}")/.dta/.p001

rm $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

cp $(eval "echo \$dr_pth_fn_${rnd}")/.dta/.p001/fl_nm.tml $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

fns_bsh_001_df2f $(eval "echo \$dr_pth_fn_${rnd}")/.dta/.p001/fl_nm.tml.d \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
