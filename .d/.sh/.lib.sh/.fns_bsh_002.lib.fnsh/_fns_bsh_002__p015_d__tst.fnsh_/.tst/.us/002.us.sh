# from:: ~/fns_bsh/.d/.p.ax/.p009.d/.dta/cp_to_dst.d/.us/002.us.sh
l_00_echo_info "that :: 002.us.sh"
# ~001_002_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/011.dom.tml.d/001_001_us_sh.tml
# first::
# flow :: exec main_fn=$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") with res.d

l_00_echo_info "res_dr=file://$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.g.tst.d/res.d"

l_00_echo_sys "$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.g.tst.d/res.d init.puml"
$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.g.tst.d/res.d init.puml

#-- {{002_002_us_sh}}