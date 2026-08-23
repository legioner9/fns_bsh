# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.us.sh"
# ~001_001_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/004.dom.tml.d/001_001_us_sh.tml
# first:: for .p007.d gig 001.us.sh

# check exist $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
echo -e " arg_flow ::
if src_dir :: $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
\$1 root_dr \$2 ::
dr - result dr
fl - result fl
"
eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	. ~/fns_bsh/.d/.p.ax/.p015.d/g.pr $(eval "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_2_fn_${rnd}")
	l_00_echo_err "CHECK! . ~/fns_bsh/.d/.p.ax/.p009.d/g.pr $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") .tst -tst"
	. ~/fns_bsh/.d/.p.ax/.p009.d/g.pr $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") .tst -tst

fi

#-- {{002_001_us_sh}}
