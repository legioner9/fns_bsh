# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 004.pull_push.us.sh"

l_00_echo_ques "DFN:: fns_bsh_002_git_treat_1_pull_push()"

fns_bsh_002_git_treat_1_pull_push() {

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

	l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"

}

# ping gitflic.ru -c 1 >/dev/null || {
# 	echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ping gitflic.ru -c 1 >/dev/null ]]', return 1${NRM}" >&2
# 	return 1
# }

# l_00_echo_code "git pull $hrepo master"
# git pull $hrepo master || {

# 	echo -e "${ECHO_WARN}in file://$HOME\$aer\.d\.sh\rpo2git.sh , \
# 	line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' continue ${NRM}" >&2

# 	l_00_echo_code "git pull $hrepo master | grep stash"

# 	if git pull $hrepo master 2>&1 | grep stash; then
# 		l_00_echo_code "git stash"
# 		git stash
# 		l_00_echo_code "git pull $hrepo master"
# 		if git pull $hrepo master; then
# 			l_00_echo_succ "continue"
# 			git stash pop
# 			git add .
# 			git commit -m "<>"
# 			git push gf master
# 			git push alt master
# 			git push gh master
# 		else
# 			echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' return 1${NRM}" >&2
# 			return 1
# 		fi

# 	fi
# 	return 1
# }
