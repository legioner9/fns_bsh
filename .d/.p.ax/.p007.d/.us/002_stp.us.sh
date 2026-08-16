l_00_echo_info "that :: 002_stp.us.sh"

# echo "dr_pth_fn=$(eval "echo \$dr_pth_fn_${rnd}")"             # ~/fns_bsh/.d/.p.ax/.p007.d
# echo "prnt1_dr_pth_fn=$(eval "echo \$prnt1_dr_pth_fn_${rnd}")" # ~/fns_bsh/.d/.p.ax
# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d

l_00_echo_info "gig $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/g.pr"

fns_bsh_001_als_gig_fl_sh $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d \
	g.pr \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/002.dom.tml.d

fns_bsh_001_als_gig_fl_sh $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.tst \
	g.tst \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d

echo -e "
# stck :: fns_bsh_001_als_gig_fl_sh $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.tst \
	g.tst \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d" >> \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.tst/g.tst

# gig fl.vis  /.g.d/g.vis
l_00_echo_warn ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.vis"

. $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.vis

echo -e "
# stck :: . $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.vis" >> \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d/g.vis

fns_bsh_001_als_gig_fl_sh $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.arg \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p007.d/.dta/g_arg.dom.tml.d

echo -e "
# stck :: fns_bsh_001_als_gig_fl_sh $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.arg \
	~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d \
	~/fns_bsh/.d/.p.ax/.p007.d/.dta/g_arg.dom.tml.d" >> \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d/g.arg

# gig  fns_bsh_001_df2f .d/.p.ax/.p007.d/.us/001.us.sh
fns_bsh_001_df2f ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/004.dmn.tml.d \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.us/001.us.sh
