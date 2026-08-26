# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 007.body.us.sh"

# fns_bsh_002_git_treat_1_arr_rpo_pth

for rpo_pth in ${fns_bsh_002_git_treat_1_arr_rpo_pth[@]}; do

	echo "${rpo_pth}"

	fns_bsh_002_git_treat_1_check_clone ${rpo_pth} || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'fns_bsh_002_git_treat_1_check_clone ${rpo_pth}', return 1${NRM}" >&2
		return 1
	}

	fns_bsh_002_git_treat_1_check_remote ${rpo_pth} || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'fns_bsh_002_git_treat_1_check_remote ${rpo_pth}', return 1${NRM}" >&2
		return 1
	}

	fns_bsh_002_git_treat_1_pull_push ${rpo_pth} || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'fns_bsh_002_git_treat_1_pull_push ${rpo_pth}', return 1${NRM}" >&2
		return 1
	}

done
