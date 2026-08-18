# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 002.us.sh"

#! get fn_nm from dr_nm with single! .ext
l_00_echo_code "arg_2_fn_nm_${rnd}=\$(l_01_prs_f -n \$(eval "echo \$arg_2_fn_${rnd}"))"
eval "arg_2_fn_nm_${rnd}=\$(l_01_prs_f -n \$(eval "echo \$arg_2_fn_${rnd}"))"
eval "echo \"arg_2_fn_nm=\$arg_2_fn_nm_${rnd}\""

# read -p fn_nm

l_00_echo_info "gig $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/$(eval "echo \$arg_2_fn_nm_${rnd}").sh"

fns_bsh_001_als_gig_fn_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	$(eval "echo \$arg_2_fn_nm_${rnd}").sh \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/002.dom.tml.d

# read -p "01 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"

fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.tst \
	g.tst \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d

# read -p "02 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"

echo -e "
# stck :: fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.tst \
	g.tst \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}").d/.tst/g.tst

#! todo .p014.d ->> gig fl.vis  /.g.d/g.vis
# l_00_echo_warn ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p014.d/g.pr \
# 	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d \
# 	g.vis"

#? . $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p014.d/g.pr \
# 	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d \
# 	g.vis

# read -p "03 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"

echo -e "
# stck :: . $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d \
	g.vis" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}").d/.g.d/g.vis

fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d \
	g.arg \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p007.d/.dta/g_arg.dom.tml.d

# read -p "04 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"

echo -e "
# stck :: fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d \
	g.arg \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p007.d/.dta/g_arg.dom.tml.d" >> \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.g.d/g.arg

# gig  ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/004.dom.tml.d
fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/004.dom.tml.d \
	$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.us/001.us.sh


# read -p "05 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"