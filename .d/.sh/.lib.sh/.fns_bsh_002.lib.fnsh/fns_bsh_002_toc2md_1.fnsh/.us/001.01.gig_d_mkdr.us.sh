# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.01.gig_d.us.sh"
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

# fns_bsh_006_gv :: gig_value :: \$1->rnd \$2->nm \$3->vol :: eval "${2}_${1}=${3}"
# fns_bsh_006_vv2e :: volume_value2echo::\$1->rnd \$2->nm :: eval "echo \$${2}_${1}"
# fns_bsh_006_nv2e :: name_value2echo::\$1->rnd \$2->nm :: eval "echo ${2}_${1}"
# fns_bsh_006_info_v :: l_00_echo_info::\$1->rnd \$2->nm ::
#	l_00_echo_info "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"

eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then
	# local md_dta_1234fftbarf=$(l_01_prs_f -d $(eval "echo \$arg_1_fn_${rnd}"))/_$(l_01_prs_f -ne $(eval "echo \$arg_1_fn_${rnd}")).d
	# l_00_echo_ques "\$md_dta_1234fftbarf=$md_dta_1234fftbarf"
	#! def glob md_dta
	fns_bsh_006_gv ${rnd} md_dta "$(l_01_prs_f -d $(eval "echo \$arg_1_fn_${rnd}"))/_$(l_01_prs_f -ne $(eval "echo \$arg_1_fn_${rnd}")).d"
	fns_bsh_006_info_v ${rnd} md_dta
	read -p "Global value $(fns_bsh_006_nv2e ${rnd} md_dta)"
	fns_bsh_002_toc2md_1_gig_d_mkdr() {

		l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'" #exit
		# local pr_dr=$(l_01_prs_f -d $(eval "echo \$arg_1_fn_${rnd}"))
		# local nm_dr=_$(l_01_prs_f -ne $(eval "echo \$arg_1_fn_${rnd}")).d

		# if ! (
		# 	rm -f $pr_dr/$nm_dr
		# 	mkdir $pr_dr/$nm_dr
		# ) >/dev/null; then
		# 	return 1
		# fi

		if ! (
			rm -f $(fns_bsh_006_vv2e ${rnd} md_dta)
			mkdir $(fns_bsh_006_vv2e ${rnd} md_dta)
		) >/dev/null; then
			return 1
		fi

		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'" #exit
	}

fi

#-- {{002_001_us_sh}}
