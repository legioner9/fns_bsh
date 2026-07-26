# chaine .p001 to .p002

fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p001 \
	$(eval "echo \$dr_pth_fn_${rnd}")/.p002/fl_nm.tml

# final treat .p002
fns_bsh_001_dt5f $(eval "echo \$dr_pth_fn_${rnd}")/.p002 \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

