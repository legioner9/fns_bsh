# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 003.check_remote.us.sh"

l_00_echo_ques "DFN:: fns_bsh_002_git_treat_1_check_remote()"

fns_bsh_002_git_treat_1_check_remote() {

	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
	[[ -n "$1" ]] || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ARG_1_NOT_EXIST : 'repo for check', return 1${NRM}" >&2
		return 1
	}

	cd ${HOME}/"$1" || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cd ${HOME}/$(l_01_prs_f -n "$1")', return 1${NRM}" >&2
		return 1
	}
	# fns_bsh_002_git_treat_1_arr_remote[$i,0]
	# git remote get-url

	for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do
		l_00_echo_info "	[$i,0]=${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}"
		l_00_echo_info "	[$i,1]=${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}"
		l_00_echo_code "git remote get-url ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}"

		if [[ ! "$(git remote get-url ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]})" == "${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}" ]]; then
			l_00_echo_code "git remote add ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} ${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}"
			git remote add ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} ${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}
		fi

	done

	l_00_echo_code "git remote -v"
	git remote -v

	l_00_echo_code "end :: <${FUNCNAME[0]}>"
}
