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
	if [[ ! -d $(eval "echo \$arg_1_fn_${rnd}") ]]; then
		l_00_echo_code "exit :: <${FUNCNAME[0]}>"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  NOT_DIR : 'root_dr \$1 not_exist', return 1${NRM}" >&2
		return 1
	fi

	l_00_echo_code "[[ -d file://$(eval "echo \$arg_2_fn_${rnd}") ]]"
	file $(eval "echo \$arg_2_fn_${rnd}")
	if [[ "$(eval "echo \$arg_3_fn_${rnd}")" == "-int" ]]; then
		if [[ -d $(eval "echo \$arg_2_fn_${rnd}") ]]; then
			if ! l_01_is_yes "QUES:: rm -r $(eval "echo \$arg_2_fn_${rnd}")"; then
				l_00_echo_code "rm -r $(eval "echo \$arg_2_fn_${rnd}")"
				rm -r $(eval "echo \$arg_2_fn_${rnd}")

			else
				l_00_echo_code "exit :: <${FUNCNAME[0]}>"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  IS_DIR : 'res_dr \$2 is_exist', return 1${NRM}" >&2
				return 1
			fi
		fi
	fi

	if [[ "$(eval "echo \$arg_3_fn_${rnd}")" == "-rm" ]]; then
		if [[ -d $(eval "echo \$arg_2_fn_${rnd}") ]]; then
			rm -r $(eval "echo \$arg_2_fn_${rnd}")
		fi
	fi

	if [[ "$(eval "echo \$arg_3_fn_${rnd}")" == "-err" ]]; then
		if [[ -d $(eval "echo \$arg_2_fn_${rnd}") ]]; then
			l_00_echo_code "exit :: <${FUNCNAME[0]}>"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  IS_DIR : 'res_dr \$2 is_exist', return 1${NRM}" >&2
			return 1
		fi
	fi

	# ~/fns_bsh/.d/.p.ax/.p012.d/.dta/cp_to_dst.d = $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d

	local src_d=$(eval "echo \$arg_1_fn_${rnd}")
	local dst_d=$(eval "echo \$arg_2_fn_${rnd}")

	local src_nm_dr=$(basename $(eval "echo \$arg_1_fn_${rnd}"))
	local dst_root_dr=$(dirname $(eval "echo \$arg_2_fn_${rnd}"))
	local dst_nm_dr=$(basename $(eval "echo \$arg_2_fn_${rnd}"))

	l_00_echo_code "cp -r file://$src_d file://$dst_root_dr"
	cp -r $src_d $dst_root_dr || {
		l_00_echo_code "exit :: <${FUNCNAME[0]}>"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ERROR : 'cp -r $src_d $dst_root_dr', return 1${NRM}" >&2
		return 1
	}
	:

	l_00_echo_code "mv file://$dst_root_dr/$src_nm_dr file://$dst_d"
	mv $dst_root_dr/$src_nm_dr $dst_d || {
		l_00_echo_code "exit :: <${FUNCNAME[0]}>"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ERROR : 'cp -r $src_d $dst_root_dr', return 1${NRM}" >&2
		return 1
	}
	:
fi

#-- {{002_001_us_sh}}
