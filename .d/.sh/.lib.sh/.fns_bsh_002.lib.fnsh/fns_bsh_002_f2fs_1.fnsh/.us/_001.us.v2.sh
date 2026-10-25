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

	#.. from ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_004.lib.sg.sh/_tst/fns_bsh_004_f2fs.tst.d
local line_52vsddfv=
	local root_d_5436asd=$(dirname "$1")/$(basename "$1").d

	l_00_echo_info "\$root_d=$root_d_5436asd"

	if [[ -d "$root_d_5436asd" ]]; then
		if ! l_01_is_yes "REMOVE_DIR and CONTINUE? $root_d_5436asd"; then
			rm -r $root_d_5436asd
		else
			l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  NOT_REMOVE_DIR : '$root_d_5436asd', return 1${NRM}" >&2
			return 1
		fi
	fi

	local arr_line_43cdsa=()

	for line_52vsddfv in $(l_02_f2e "$1"); do
		l_00_echo_info "\$line=$line_52vsddfv"

		IFS=':' read -r -a arr_line_43cdsa <<<"$line_52vsddfv"
		l_00_echo_info "\${arr_line[0]}=${arr_line_43cdsa[0]}"
		l_00_echo_info "\${arr_line[1]}=${arr_line_43cdsa[1]}"

		if ! [[ -d "${arr_line_43cdsa[0]}" || -f "${arr_line_43cdsa[0]}" ]]; then
			l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO} NOT_DR_OR_FL :: EXEC_FAIL : '[[ -d "${arr_line_43cdsa[0]}" || -f "${arr_line_43cdsa[0]}" ]]', return 1${NRM}" >&2
			return 1
		fi

		if [[ -n "${arr_line_43cdsa[1]}" ]]; then
			mkdir -p "$root_d_5436asd/${arr_line_43cdsa[1]}"
		fi

		if [[ -d "${arr_line_43cdsa[0]}" ]]; then

			cp -r "${arr_line_43cdsa[0]}" "$root_d_5436asd/${arr_line_43cdsa[1]}" || {
				l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cp -r "${arr_line_43cdsa[0]}" "$root_d_5436asd/${arr_line_43cdsa[1]}"', return 1${NRM}" >&2
				return 1
			}

		fi
		# l_00_echo_code "[[ -f "${arr_line_43cdsa[0]}" ]]"
		file "${arr_line_43cdsa[0]}"
		if [[ -f "${arr_line_43cdsa[0]}" ]]; then
			cp "${arr_line_43cdsa[0]}" "$root_d_5436asd/${arr_line_43cdsa[1]}" || {
				l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cp -r "${arr_line_43cdsa[0]}" "$root_d_5436asd/${arr_line_43cdsa[1]}"', return 1${NRM}" >&2
				return 1
			}

		fi

	done
fi

#-- {{002_001_us_sh}}
