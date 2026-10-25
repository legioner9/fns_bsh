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

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then
	:
	if ! l_01_is_yes "DO? rm -rf $(eval "echo \$arg_2_fn_${rnd}")"; then

		l_00_echo_code "rm -rf $(eval "echo \$arg_2_fn_${rnd}")"
		rm -rf "$(eval "echo \$arg_2_fn_${rnd}")"

	else

		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'NT_DL+DR+{REN}', return 1${NRM}" >&2
		return 1

	fi

	mkdir -v "$(eval "echo \$arg_2_fn_${rnd}")"

	local pth_2535vdfs=
	local dr_nm_234451fsdf=
	local new_dr_63425tdsfgs=

	for pth_2535vdfs in $(l_02_f2e $(eval "echo \$arg_1_fn_${rnd}")); do

		l_00_echo_info $pth_2535vdfs
		l_00_echo_code "cp -r $pth_2535vdfs $(eval "echo \$arg_2_fn_${rnd}")"
		cp -r "$pth_2535vdfs" "$(eval "echo \$arg_2_fn_${rnd}")" || {
			l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cp -r $pth_1 $(eval "echo \$arg_2_fn_${rnd}")', return 1${NRM}" >&2
			return 1
		}

		dr_nm_234451fsdf=$(basename $pth_2535vdfs)
		l_00_echo_info $dr_nm_234451fsdf
		# read -p dr_nm_234451fsdf
		new_dr_63425tdsfgs=$(eval "echo \$arg_2_fn_${rnd}")/$dr_nm_234451fsdf

		if [[ -f $new_dr_63425tdsfgs/.from ]]; then
			l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : '[[ -f $new_dr_63425tdsfgs/.from ]], return 1${NRM}" >&2
			return 1
		fi

		echo "$pth_2535vdfs" >"$new_dr_63425tdsfgs"/.from
		lfoe_path_to_var "$new_dr_63425tdsfgs"/.from

	done

fi

#-- {{002_001_us_sh}}
