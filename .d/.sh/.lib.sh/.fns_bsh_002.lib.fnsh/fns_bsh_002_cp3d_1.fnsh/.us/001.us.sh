# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.us.sh"
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
# fns_bsh_006_warn_v :: l_00_echo_warn::\$1->rnd \$2->nm ::
#	l_00_echo_warn "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"
# fns_bsh_006_err_v :: l_00_echo_err::\$1->rnd \$2->nm ::
#	l_00_echo_err "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"

eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

fns_bsh_006_warn_v ${rnd} fn_nm # fns_bsh_002_f2fs_1

echo "$(fns_bsh_006_vv2e ${rnd} fn_nm) '$@'"

fns_bsh_004_s2bllg "$(eval "echo \$arg_1_fn_${rnd}")" "$(fns_bsh_006_vv2e ${rnd} fn_nm) $(eval "echo \$arg_1_fn_${rnd}")"
# fns_bsh_004_s2bllg "$(eval "echo \$arg_2_fn_${rnd}")" "$(fns_bsh_006_vv2e ${rnd} fn_nm) $(eval "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_2_fn_${rnd}")"

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then
	:
	# fns_bsh_002_xx() {
		:
		# l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
		# [[ -z "$1" ]] && {
		# 	# snp "out_err"
		# 	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
		# 	echo -e "${ECHO_RET1} in $(eval "echo \$dr_pth_fn_${rnd}")/.us/yy.us.sh , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
		# 	return 1
		# }
		# l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
		# return 0
	# }

	# fns_bsh_002_cp3d_1_cp_init
	l_00_echo_sys "fns_bsh_004_gig_bbcp $(eval "echo \$arg_1_fn_${rnd}")"
	fns_bsh_004_gig_bbcp "$(eval "echo \$arg_1_fn_${rnd}")"

fi

	#-- {{002_001_us_sh}}
		