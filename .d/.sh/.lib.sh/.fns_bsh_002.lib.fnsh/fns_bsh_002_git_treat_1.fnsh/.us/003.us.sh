# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 003.us.sh"

# fns_bsh_002_git_treat_1_arr_rpo_pth

for rpo_pth in ${fns_bsh_002_git_treat_1_arr_rpo_pth[@]}; do
	echo ${rpo_pth}
	fns_bsh_002_git_treat_1_check_clone ${rpo_pth} || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : '...', return 1${NRM}" >&2
		return 1
	}
done
