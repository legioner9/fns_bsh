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

# gig fl.vis  /.g.d/g.vis
l_00_echo_warn ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.vis"
. $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p009.d/g.pr \
	$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d/.g.d \
	g.vis
