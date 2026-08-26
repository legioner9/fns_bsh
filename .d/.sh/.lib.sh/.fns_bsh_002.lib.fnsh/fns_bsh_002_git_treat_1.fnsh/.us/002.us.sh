# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 002.us.sh"

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

fns_bsh_002_git_treat_1_check_clone() {

	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"

	[[ -n "$1" ]] || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  ARG_1_NOT_EXIST : 'repo for check', return 1${NRM}" >&2
		return 1
	}

	l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
}

fns_bsh_002_git_treat_1_check_clone csda
