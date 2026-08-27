# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 005.check_bare.us.sh"

l_00_echo_ques "DFN:: fns_bsh_002_git_treat_1_check_bare()"

fns_bsh_002_git_treat_1_check_bare() {

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

	local nm_bare=$(l_01_prs_f -n "$1")

	l_00_echo_sys "check bare $1 in fns_bsh_002_git_treat_1_arr_usb ::"

	unset item6
	for item6 in ${fns_bsh_002_git_treat_1_arr_usb[@]}; do
		if ! [[ -d $item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare ]]; then

			l_00_echo_warn "NOT_DIR :: $item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare"

			l_00_echo_code "mkdir -p $item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare"
			mkdir -p "$item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare"

			l_00_echo_code "cd $item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare"
			cd "$item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare" || {
				l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cd $item6/$fns_bsh_002_git_treat_1_bare_dr/$nm_bare', return 1${NRM}" >&2
				return 1
			}

			l_00_echo_code "git init --bare"
			git init --bare || {
				l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'git init --bare', return 1${NRM}" >&2
				return 1
			}

		fi

	done

	l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"

}
