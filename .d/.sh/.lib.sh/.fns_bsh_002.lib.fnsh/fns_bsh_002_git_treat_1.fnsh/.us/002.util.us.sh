# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 002.util.us.sh"

# check_repo_adcae_12344() {
# 	l_00_echo_code "start::check_repo_adcae_12344"
# 	if [[ ! -d $HOME/$adcae_12344 ]]; then
# 		echo -e "${ECHO_WARN}in file://$HOME\aer_foe\.d\.sh\rpo2git.sh , line=${LINENO} edu_lnx REPO_NOT_EXIST return 1${NRM}" >&2
# 		cd ~
# 		git clone git@gitflic.ru:legioner9/$adcae_12344.git
# 		cd $HOME/$adcae_12344
# 		git remote add gh git@github.com:legioner9/$adcae_12344.git
# 		git remote add gf git@gitflic.ru:legioner9/$adcae_12344.git
# 		git remote add alt ssh://forgejo@altlinux.space/legioner9/$adcae_12344.git
# 	fi
# 	l_00_echo_code "end::check_repo_adcae_12344"
# }

l_00_echo_ques "DFN:: fns_bsh_002_git_treat_1_check_clone()"

fns_bsh_002_git_treat_1_check_clone() {

	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
	l_00_echo_info "check repo '$@'"

	[[ -n "$1" ]] || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ARG_1_NOT_EXIST : 'repo for check', return 1${NRM}" >&2
		return 1
	}

	if [[ ! -d ${HOME}/"$1" ]]; then
		echo -e "${ECHO_WARN}in file://$HOME\aer_foe\.d\.sh\rpo2git.sh , line=${LINENO} '$1' REPO_NOT_EXIST ${NRM}" >&2

		dn=$(dirname "$1")
		l_00_echo_info "dn=${dn}"
		if [[ "$dn" != "." ]]; then # rpo not from home

			l_00_echo_code "mkdir -p ${HOME}/${dn}"
			mkdir -p ${HOME}/${dn}

			l_00_echo_code "cd ${HOME}/${dn}"
			cd ${HOME}/${dn} || {
				l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
				echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : '...', return 1${NRM}" >&2
				return 1
			}

			if [[ ${main_repo_adr:0:1} == "/" ]]; then
				if [[ ! -d ${main_repo_adr} ]]; then
					l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
					echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  DIR_NOT_EXIST : main_repo_adr=${main_repo_adr}, return 1${NRM}" >&2
					return 1
				fi
			fi

			l_00_echo_code "git clone ${main_repo_adr}/$(l_01_prs_f -n "$1").git"
			git clone ${main_repo_adr}/$(l_01_prs_f -n "$1").git
			tree -a -L 1 ${HOME}/"$1"

		else
			l_00_echo_code "cd ${HOME}"
			cd "${HOME}"
			l_00_echo_code "git clone ${main_repo_adr}/$1.git"
			git clone ${main_repo_adr}/"$1".git
			tree -a -L 1 ${HOME}/"$1"
		fi

	fi

	l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
}
