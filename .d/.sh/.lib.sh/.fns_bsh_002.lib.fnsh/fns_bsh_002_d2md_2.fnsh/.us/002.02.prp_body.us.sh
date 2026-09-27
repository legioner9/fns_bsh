# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 002.02.prp_body.us.sh"
l_00_echo_ques "... DFN:: fn()...| BODY::..."

# ~001_001_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/0012.dom.tml.d/001_001_us_sh.tml
# first:: for .p015.d gig 001.us.sh

# check exist $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
echo -e " arg_flow ::
if src_dir :: $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
\$1 root_dr \$2 ::
dr - result dr
fl - result fl
"
# arg1 ::
# $(eval "echo \$arg_1_fn_${rnd}")
# arg2 ::
# $(eval "echo \$arg_2_fn_${rnd}")

# fl_pth_fn ::
# $(eval "echo \$fl_pth_fn_${rnd}")
# dr_pth_fn ::
# $(eval "echo \$dr_pth_fn_${rnd}")
# fl_nm_fn ::
# $(eval "echo \$fl_nm_fn_${rnd}")
# prnt1_dr_pth_fn ::
# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")
# prnt2_dr_pth_fn ::
# $(eval "echo \$prnt2_dr_pth_fn_${rnd}")

#! gig_var
#fns_bsh_002_d2md_2_dr_dta

eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	fns_bsh_002_d2md_2_prp_body() {

		l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
		# $(eval "echo \$dr_pth_fn_${rnd}")/.cdn/pre1.md
		# $fns_bsh_002_d2md_2_dr_dta/chpt.md
		# $fns_bsh_002_d2md_2_dr_dta/body.md
		#! $fns_bsh_002_d2md_2_dr_dta/body_toc.md result
		cat $(eval "echo \$dr_pth_fn_${rnd}")/.cdn/pre1.md | cat - $fns_bsh_002_d2md_2_dr_dta/body.md >$fns_bsh_002_d2md_2_dr_dta/body_toc.md

		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
	}

fi

#-- {{002_001_us_sh}}
