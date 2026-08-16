l_00_echo_info "that :: 001_gig_tml.us.sh"

if [[ -d $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") ]]; then
	echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  DIR_EXIST : result dr, return 1${NRM}" >&2
	return 1
fi

cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.dta/XXX.pr $(eval "echo \$arg_1_fn_${rnd}")

mv $(eval "echo \$arg_1_fn_${rnd}")/XXX.pr $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

#insert to make ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml/pre_make.tml
l_02_fs2f ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml/pre_make.tml \
	{{pre_make}} \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: l_02_fs2f ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml/pre_make.tml \
	{{pre_make}} \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

l_02_s2f {{pre_make}} [[pre_make]] \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: l_02_s2f {{pre_make}} [[pre_make]] \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

l_02_fs2f ~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/makefile.set.tml.d/001_body.tml \
	{{001_body}} \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: l_02_fs2f ~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/makefile.set.tml.d/001_body.tml \
	{{001_body}} \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

l_02_s2f {{001_body}} [[001_body]] \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: l_02_s2f {{001_body}} [[001_body]] \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

l_02_s2f {{pr_pth}} $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: l_02_s2f {{pr_pth}} $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

lfoe_path_to_var $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

echo -e "
# stck :: lfoe_path_to_var $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/makefile

fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	start_make.sh \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/start_make.dom.tml.d

echo -e "
# stck :: fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	start_make.sh \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/start_make.dom.tml.d" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/start_make.sh
