# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 002.us.sh"

#.. cp from .p007.d $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d -> \
#.. 	 $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

l_00_echo_info "gig $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/g.sh"

fns_bsh_001_als_gig_fl_sh $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") \
	g.sh \
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
#.. default beh::
if [[ -z "$(eval "echo \$arg_3_fn_${rnd}")" ]]; then
	fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/004.dom.tml.d \
		$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.us/001.us.sh
fi

if [[ "-tst" == "$(eval "echo \$arg_3_fn_${rnd}")" ]]; then
	fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/010.dom.tml.d \
		$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.us/001.us.sh

	fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/011.dom.tml.d \
		$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.us/002.us.sh

		# read -p "check file://$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")/.us/002.us.sh"
fi

# read -p "05 in ~/fns_bsh/.d/.p.ax/.p009.d/.us/002.us.sh"
