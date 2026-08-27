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
	unset url
	unset als
	unset rpo_nm
	for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do
		l_00_echo_info "	[$i,0]=${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}"
		l_00_echo_info "	[$i,1]=${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}"

		als=${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}
		url=${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}
		rpo_nm=$(l_01_prs_f -n $1)
		get_url=$(git remote get-url $als)

		if [[ ${url:0:1} == "/" ]]; then
			if [[ -z "$get_url" ]]; then
				git remote add $als $url/$fns_bsh_002_git_treat_1_bare_dr/$rpo_nm
			else
				if [[ "$get_url" != "$url/$fns_bsh_002_git_treat_1_bare_dr/$rpo_nm" ]]; then
					l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
					echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ERROR_GIT_REMOTE :: '$get_url" != "$url/$fns_bsh_002_git_treat_1_bare_dr/$rpo_nm' RECOMM::git remote set-url $als $url/$fns_bsh_002_git_treat_1_bare_dr/$rpo_nm, return 1${NRM}" >&2
					return 1
				fi
			fi
		else
			if [[ -z "$get_url" ]]; then
				git remote add $als $url/$rpo_nm.git
			else
				if [[ "$get_url" != "$url/$rpo_nm.git" ]]; then
					l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
					echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ERROR_GIT_REMOTE :: '$get_url != $url/$rpo_nm.git', RECOMM::git remote set-url $als $url/$rpo_nm.git return 1${NRM}" >&2
					return 1
				fi
			fi
		fi
		# l_00_echo_code "git remote get-url ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]}"

		# if [[ "$(git remote get-url ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]})" != "${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}/$(l_01_prs_f -n $1).git" ]]; then
		# 	l_00_echo_code "git remote add ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} ${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}"
		# 	git remote add ${fns_bsh_002_git_treat_1_arr_remote[$i, 0]} ${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}/$(l_01_prs_f -n $1).git
		# fi

	done

	l_00_echo_code "git remote -v"
	git remote -v

	l_00_echo_code "end :: <${FUNCNAME[0]}>"
}
