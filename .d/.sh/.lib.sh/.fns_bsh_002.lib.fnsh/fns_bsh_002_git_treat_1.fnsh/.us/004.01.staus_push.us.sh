# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 004.01.staus_push.us.sh"

l_00_echo_ques "DFN:: fns_bsh_002_git_treat_1_staus_push()"

fns_bsh_002_git_treat_1_staus_push() {

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

	if [[ -n "$(git status -s)" ]]; then

		git add .
		git commit -m "<>"

	else
		l_00_echo_warn "gs clear in $1 :: true?"
	fi

	for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do

		l_00_echo_info "	[$i,$j]=${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}"

		l_00_echo_code "git push ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} master"
		git push ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} master

	done

	l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"

}
