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

	if [[ -d $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") ]]; then
		if ! l_01_is_yes "QUES:: rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"; then
			l_00_echo_code "rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
			rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

		else
			l_00_echo_code "exit :: <${FUNCNAME[0]}>"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  IS_DIR : 'res_dr \$2 is_exist', return 1${NRM}" >&2
			return 1
		fi
	fi

	# ~/fns_bsh/.d/.p.ax/.p012.d/.dta/cp_to_dst.d = $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
	cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d $(eval "echo \$arg_1_fn_${rnd}")
	mv $(eval "echo \$arg_1_fn_${rnd}")/cp_to_dst.d $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

fi

	#-- {{002_001_us_sh}}
		