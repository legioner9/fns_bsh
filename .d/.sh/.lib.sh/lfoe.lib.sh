#!/bin/bash

# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# aer="aer_foe"
aer="edu_lnx"

echo "start lfoe.lib.sh in $aer"

lfoe_is_diff_orign_master() {

	local arg1="$1"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
        lfoe_is_diff_orign_master :: ret true if local idetifier remote repo
        \$1 [, -h]
        "
		return 0
	}

	git diff master origin/master || {
		echo "master diff origin, return 0"
		return 0
	}
	return 1
}

lfoe_is_fn() {

	local arg1="$1"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
        lfoe_is_fn :: ret true if \$1 function
        \$1 ?nm_function
        "
		return 0
	}
	[[ $(type -t "$1") == "function" ]] || return 1
	return 0
}

lfoe_dfn_os2e() {

	local arg1="$1"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
        lfoe_dfn_os2e :: stdout type_os
        \$1 [, -h]
        "
		return 0
	}

	UNAME=$(command -v uname)

	case $("${UNAME}" | tr '[:upper:]' '[:lower:]') in
	linux*)
		printf 'linux\n'
		;;
	darwin*)
		printf 'darwin\n'
		;;
	msys* | cygwin* | mingw*)
		# or possible 'bash on windows'
		printf 'windows\n'
		;;
	nt | win*)
		printf 'windows\n'
		;;
	*)
		printf 'unknown\n'
		;;
	esac
	return 0
}

lfoe_this_dir_git2e() {
	l_00_echo_code "start::lfoe_this_dir_git2e"
	local arg1="$1"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
        lfoe_this_dir_git2e :: ret true if pwd in git_repo
        \$1 [, -h]
        "
		l_00_echo_code "end::lfoe_this_dir_git2e"
		return 0
	}

	git rev-parse --show-toplevel || {
		echo -e "${ECHO_RET1} EXEC : 'git rev-parse --show-toplevel' in $(pwd), 'RESUME :: $(pwd) IS_NOT git dir' return 1${NRM}" >&2
		return 1
	}
	return 0
}

lfoe_gig_sh() {
	l_00_echo_code "start::lfoe_gig_sh"
	[[ "$1" != "-h" ]] || {
		echo -e "
        lfoe_gig_sh :: create \$1 file in \$2 from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml [, \$3 into_body_file]
        \$1 dir_rel_pth for file [ or @ if in_gig_dir ]
        \$2 file name with .sh
        [ optional :: \$3 file for insert into {{body}} :: [, contane var_{fn_nm}] ]
        "
		l_00_echo_code "end::lfoe_gig_sh"
		return 0
	}

	if [[ -z "$2" ]]; then
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ::  ARG2_NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	#! ptr_path_N
	local ptr_path_1="$1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1="$ptr_path_1"
	local arg2="$2"

	l_00_echo_info "\$arg1=$arg1"
	l_00_echo_info "\$arg2=$arg2"

	if [[ -n "$3" ]]; then
		local ptr_path_3="$3"
		ptr_path_3="$(l_01_abs_path "$(pwd)" "ptr_path_3")"
		if [[ -f $ptr_path_3 ]]; then
			local arg3="$ptr_path_3"
			l_00_echo_info "\$arg3=$arg3"
		else
			echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} :: ARG3_NOT_FILE ::  EXEC : '[[ ! -f "$ptr_path_3" ]]', return 1${NRM}" >&2
			return 1
		fi

	fi

	[[ -d "$arg1" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  NOT_DIR : 'arg1=$arg1' :: root dir for .sh file , return 1${NRM}" >&2
		return 1
	}

	[[ -n "$arg2" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
		return 1
	}

	local tml_pth=${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
	local fl_nm="$arg1"/"$arg2"
	local rnd=${RANDOM}_${RANDOM}
	local fn_nm="fn_${rnd}"

	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3

	if [[ ! -f "${fl_nm}" ]]; then
		l_00_echo_info "cp $tml_pth $fn_nm"
		cp "$tml_pth" "$fl_nm"

		l_00_echo_code "l_02_s2f {{fl_nm}} ${fl_nm} ${fl_nm}"
		l_02_s2f "{{fl_nm}}" "${fl_nm}" "${fl_nm}"

		if [[ -n $arg3 ]]; then
			l_02_fs2f "$arg3" "{{body}}" "${fl_nm}"
			# in code contane "{{body}}" - not replace!
			# l_02_s2f "{{body}}" "[[body]]" "${fl_nm}"
		fi

		l_00_echo_code "cp $tml_pth $fn_nm"
		l_02_s2f "{{fn_nm}}" "${fn_nm}" "${fl_nm}"
		l_02_s2f "{{head}}" "${fn_nm}" "${fl_nm}"

		l_02_s2f "{{rnd}}" "${rnd}" "${fl_nm}"
	else
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  FILE_EXIST : '$dr_nm', return 1${NRM}" >&2
		return 1
	fi

	lfoe_path_to_var "${fl_nm}"
	l_00_echo_code "start::lfoe_gig_sh"
	return 0

}

lfoe_path_to_var() {

	local arg1="$1"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
        lfoe_path_to_var :: recive \${HOME} incert '${HOME}'  
        \$1 rel_pth fl for treat
        "
		return 0
	}

	#! ptr_path_N
	local ptr_path_1="$1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1="$ptr_path_1"
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
	l_02_s2f "${HOME}" '${HOME}' "${arg1}"

	return 0

}

lfoe_a() {
	local arg="$1"

	[[ "$arg" != "-h" ]] || {
		echo -e "
        lfoe_gig_sh :: gig select from $HOME/aer_foe/.d/.sh/.lib.sh/.dta/.mul/lfoe_a
        nm.lst - name point
        rc.lst - result file_nm for {. \$file_nm}
        "
		return 0
	}

	#! ptr_path_N
	local ptr_path_1="$1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1="$ptr_path_1"
}

# ------------------------------- tml fn --------------------------------------

_lfoe_tml() {
	local arg1="$1"
	local arg2="$2"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
		flow :: [do_this]
        _lfoe_tml :: 
			\$1 - 
        "
		return 0
	}

	[[ -n "$arg2" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
		return 1
	}

	#! ptr_path_N
	local ptr_path_1="$arg1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1_fpth="$ptr_path_1"
}

# ------------------------------- tml fn --------------------------------------

lfoe_rpo2git() {
	l_00_echo_code "start::lfoe_rpo2git"
	ping gitflic.ru -c 1 >/dev/null || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ping gitflic.ru -c 1 >/dev/null ]]', return 1${NRM}" >&2
		return 1
	}

	[[ -n "$1" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ARG1_IS_EMPTY : is name rpo , return 1${NRM}" >&2
		return 1
	}

	DDir=$(pwd)
	#? aer="aer_foe"
	aer="$1"
	hrepo="gf"

	if [[ "$2" == "-h" ]]; then
		echo -e "
	that :: ${HOME}/$aer/.d/.sh/rpo2git.sh
	help info ::
	\$1 
		-h :: echo this help
		-i :: init flow first push this repo to $hrepo - that head_repo=hrepo
			git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
			git push $hrepo master			
	"
		return 0
	fi

	if [[ "$2" == "-i" ]]; then
		echo -e "
	that :: ${HOME}/$aer/.d/.sh/rpo2git.sh
	-i :: init flow first push init_commit this repo to $hrepo - that head_repo=hrepo
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
	"
		read -p "^C refuse that flow?"
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
		return 0
	fi

	cd "$HOME/$aer"

	#! UNCOMMENT FOR ADD REMOTE
	#.. git remote add gh git@github.com:legioner9/$aer.git
	#.. git remote add gf git@gitflic.ru:legioner9/$aer.git
	#.. git remote add alt ssh://forgejo@altlinux.space/legioner9/$aer.git

	lfoe_this_dir_git2e || {
		echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ $(lfoe_this_dir_git2e) == $HOME/$aer ]]' in $(pwd), 'RESUME :: $(pwd) IS_NOT git dir' return 1${NRM}" >&2
		return 1
	}

	l_00_echo_code "git pull $hrepo master"
	git pull $hrepo master || {

		echo -e "${ECHO_WARN}in file://$HOME\$aer\.d\.sh\rpo2git.sh , \
		line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' continue ${NRM}" >&2

		l_00_echo_code "git pull $hrepo master | grep stash"

		if git pull $hrepo master 2>&1 | grep stash; then
			l_00_echo_code "git stash"
			git stash
			l_00_echo_code "git pull $hrepo master"
			if git pull $hrepo master; then
				l_00_echo_succ "continue"
				git stash pop
				git add .
				git commit -m "<>"
				git push gf master
				git push alt master
				git push gh master
			else
				echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' return 1${NRM}" >&2
				return 1
			fi

		fi
		return 1
	}

	cd "$HOME/$aer"

	l_00_echo_info "in $HOME/$aer:"

	if [[ -n "$(git status -s)" ]]; then

		git add .
		git commit -m "<>"
		git push gf master
		git push alt master
		git push gh master

	else
		l_00_echo_warn "gs clear in $aer :: true?"
	fi

	cd ${DDir}
	l_00_echo_code "end::lfoe_rpo2git"
}

lfoe_rpo2git_pth() {

	l_00_echo_code "start::lfoe_rpo2git_pth"

	ping gitflic.ru -c 1 >/dev/null || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ping gitflic.ru -c 1 >/dev/null ]]', return 1${NRM}" >&2
		return 1
	}

	[[ -n "$2" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ARG2_IS_EMPTY : is name rpo , return 1${NRM}" >&2
		return 1
	}

	DDir=$(pwd)
	#? aer="aer_foe"
	local aer="$1"
	local pth="$2"
	local aer_pth=

	if [[ "@" == "$2" ]]; then
		aer_pth=$aer
	else
		aer_pth=$pth/$aer
	fi

	local hrepo="gf"

	if [[ "$3" == "-h" ]]; then
		echo -e "
	that :: ${HOME}/$aer_pth/.d/.sh/rpo2git.sh
	help info :: 
	\$1 :: repo_nm
	\$2 ::( \$2!=@ => pth_to_rpo=\${HOME}/\$2/\$1 | \$2==@ => pth_to_rpo=\${HOME}/\$1 )
    or::	\$1
			-h :: echo this help
			-i :: init flow first push this repo to $hrepo - that head_repo=hrepo
				git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
				git push $hrepo master			
	"
		return 0
	fi

	if [[ "$3" == "-i" ]]; then
		echo -e "
	that :: ${HOME}/$aer_pth/.d/.sh/rpo2git.sh
	-i :: init flow first push init_commit this repo to $hrepo - that head_repo=hrepo
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
	"
		read -p "^C refuse that flow?"
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
		return 0
	fi

	cd "$HOME/$aer_pth"

	#! UNCOMMENT FOR ADD REMOTE
	#.. git remote add gh git@github.com:legioner9/$aer.git
	#.. git remote add gf git@gitflic.ru:legioner9/$aer.git
	#.. git remote add alt ssh://forgejo@altlinux.space/legioner9/$aer.git

	lfoe_this_dir_git2e || {
		echo -e "${ECHO_RET1}in file://$HOME\$aer_pth\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ $(lfoe_this_dir_git2e) == $HOME/$aer_pth ]]' in $(pwd), 'RESUME :: $(pwd) IS_NOT_GIT_DR' return 1${NRM}" >&2
		return 1
	}

	l_00_echo_code "git pull $hrepo master"
	git pull $hrepo master || {

		echo -e "${ECHO_WARN}in file://$HOME\$aer\.d\.sh\rpo2git.sh , \
		line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' continue ${NRM}" >&2

		l_00_echo_code "git pull $hrepo master | grep stash"

		if git pull $hrepo master 2>&1 | grep stash; then
			l_00_echo_code "git stash"
			git stash
			l_00_echo_code "git pull $hrepo master"
			if git pull $hrepo master; then
				l_00_echo_succ "continue"
				git stash pop
				git add .
				git commit -m "<>"
				git push gf master
				git push alt master
				git push gh master
			else
				echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' return 1${NRM}" >&2
				return 1
			fi

		fi
		return 1
	}

	cd "$HOME/$aer_pth"

	l_00_echo_info "in $HOME/$aer_pth:"

	if [[ -n "$(git status -s)" ]]; then

		git add .
		git commit -m "<>"
		git push gf master
		git push alt master
		git push gh master

	else
		l_00_echo_warn "gs clear in $aer :: true?"
	fi

	cd ${DDir}

	l_00_echo_code "end::lfoe_rpo2git_pth"

}

lfoe_rst_pth() {
	PATH=$(/usr/bin/getconf PATH)
}

lfoe_site2root() {
	if [[ "-h" == $1 ]]; then
		echo "\$1 site \$2 --include-directories="/c/""
		return 0
	fi
	#$1 site
	#$2 --include-directories="/c/"
	#grep -Rl HTTP_PROXY /<dr>
	#/etc/sysconfig/network
	#/etc/profile.d/proxy.sh
	#--no-proxy
	#--include-directories="/c/"
	# cd /home/st/edu_dta/fl.d/0007.fl.d/cprog.netlify.app
	# lfoe_site2root https://cprog.netlify.app
	# HTTPS_PROXY=217.177.32.161:5533
	# HTTP_PROXY=217.177.32.161:5533
	#--proxy-user=ваш_пользователь --proxy-password=ваш_пароль
	#-r -k -l 7 -p -E -nc -np (alt)
	# wget --proxy-user=stlka1 --proxy-password=123 -r -k -l 7 -p -E "$1" "$2"
	wget -r -k -l 7 -p -E -np "$1" "$2"
	# HTTPS_PROXY=
	# HTTP_PROXY=
}

lfoe_lns() {
	local arg1="$1"
	local arg2="$2"

	[[ "$arg1" != "-h" ]] || {
		echo -e "
		flow :: (ln -s)
        lfoe_lns :: 
			\$1 - src ent 
			\$2 - dst ent 
        "
		return 0
	}

	[[ -n "$arg2" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
		return 1
	}

	#! ptr_path_N
	local ptr_path_1="$arg1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1_fpth="$ptr_path_1"

	#! ptr_path_N
	local ptr_path_2="$arg2"
	ptr_path_2="$(l_01_abs_path "$(pwd)" "ptr_path_2")"

	local arg2_fpth="$ptr_path_2"

	ln -sv $arg1_fpth $arg2_fpth

	file $arg2_fpth
}

# lfoe_dt5f() {
# 	[[ "$1" != "-h" ]] || {
# 		echo -e "
#         lfoe_dt5f :: create file from [path_p]/[nm_fl.ext].p1
# 			\$1 :: [path_p]/[nm_fl.ext].p1
# 				nm_fl__ext gig nm_fl.ext (__ is .)

#         \$1 dir_rel_pth for file [ or @ if in_gig_dir ]
#         \$2 file name with .sh
#         [ optional :: \$3 file for insert into {{body}} :: [, contane var_{fn_nm}] ]
#         "
# 		return 0
# 	}

# 	if [[ -z "$2" ]]; then
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ::  ARG2_NOT_DEFINE, return 1${NRM}" >&2
# 		return 1
# 	fi

# 	#! ptr_path_N
# 	local ptr_path_1="$1"
# 	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

# 	local arg1="$ptr_path_1"
# 	local arg2="$2"

# 	l_00_echo_info "\$arg1=$arg1"
# 	l_00_echo_info "\$arg2=$arg2"

# 	if [[ -n "$3" ]]; then
# 		local ptr_path_3="$3"
# 		ptr_path_3="$(l_01_abs_path "$(pwd)" "ptr_path_3")"
# 		if [[ -f $ptr_path_3 ]]; then
# 			local arg3="$ptr_path_3"
# 			l_00_echo_info "\$arg3=$arg3"
# 		else
# 			echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} :: ARG3_NOT_FILE ::  EXEC : '[[ ! -f "$ptr_path_3" ]]', return 1${NRM}" >&2
# 			return 1
# 		fi

# 	fi

# 	[[ -d "$arg1" ]] || {
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  NOT_DIR : 'arg1=$arg1' :: root dir for .sh file , return 1${NRM}" >&2
# 		return 1
# 	}

# 	[[ -n "$arg2" ]] || {
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
# 		return 1
# 	}

# 	local tml_pth=${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
# 	local fl_nm="$arg1"/"$arg2"
# 	local rnd=${RANDOM}_${RANDOM}
# 	local fn_nm="fn_${rnd}"

# 	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
# 	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3

# 	if [[ ! -f "${fl_nm}" ]]; then
# 		l_00_echo_info "cp $tml_pth $fn_nm"
# 		cp "$tml_pth" "$fl_nm"

# 		l_00_echo_code "l_02_s2f {{fl_nm}} ${fl_nm} ${fl_nm}"
# 		l_02_s2f "{{fl_nm}}" "${fl_nm}" "${fl_nm}"

# 		if [[ -n $arg3 ]]; then
# 			l_02_fs2f "$arg3" "{{body}}" "${fl_nm}"
# 			# in code contane "{{body}}" - not replace!
# 			# l_02_s2f "{{body}}" "[[body]]" "${fl_nm}"
# 		fi

# 		l_00_echo_code "cp $tml_pth $fn_nm"
# 		l_02_s2f "{{fn_nm}}" "${fn_nm}" "${fl_nm}"

# 		l_02_s2f "{{rnd}}" "${rnd}" "${fl_nm}"
# 	else
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  FILE_EXIST : '$dr_nm', return 1${NRM}" >&2
# 		return 1
# 	fi

# 	lfoe_path_to_var "${fl_nm}"

# 	return 0

# }

lfoe_repo_up_rc() {

	[[ -n "$1" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ -n \$1]]', return 1${NRM}" >&2
		return 1
	}

	local aer="$1"

	# alias dkr="docker"

	local pro_pth=$HOME/$aer
	local fn_nm=$pro_pth/.d/.repo.d/.repo.rc
	local als_nm=$pro_pth/.d/.repo.d/.repo.als

	echo "start $fn_nm"

	. "$als_nm"

	# if [[ -f "$pro_pth/.d/.sh/l.sh" ]]; then
	# 	. "$pro_pth/.d/.sh/l.sh" || {
	# 		echo ". $pro_pth/.d/.sh/l.sh - EXEC_ERROR" >&2
	# 	}
	# else
	# 	echo ". $pro_pth/.d/.sh/l.sh - NOT_EXIST" >&2
	# fi

	l_01_c_up $pro_pth/.d/.sh/.lib.sh || {
		echo -e "${ECHO_RET1}in file://${fn_nm} , line=${LINENO} :: EXEC : 'l_01_c_up $pro_pth/.d/.sh/.lib.sh', 'RESUME :: LIBERR' return 1${NRM}" >&2
		return 1
	}

	[[ $(type -t lfoe_is_fn) == "function" ]] || {
		echo -e "${ECHO_RET1}in file://${fn_nm} , line=${LINENO} :: EXEC : '[[ \$(type -t lfoe_is_fn) == \"function\" ]]', 'RESUME :: in $HOME/aer_foe/.d/.sh/.lib.sh ERROR' return 1${NRM}" >&2
		return 1
	}

}

lfoe_gig_fn() {

	[[ "$1" != "-h" ]] || {
		echo -e "
        lfoe_gig_sh :: create \$1 file in \$2 from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml [, \$3 into_body_file]
        \$1 dir_rel_pth for file [ or @ if in_gig_dir ]
        \$2 file name with .sh
        [ optional :: \$3 file for insert into {{body}} :: [, contane var_{fn_nm}] ]
        "
		return 0
	}

	if [[ -z "$2" ]]; then
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ::  ARG2_NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	#! ptr_path_N
	local ptr_path_1="$1"
	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	local arg1="$ptr_path_1"
	local arg2="$2"

	l_00_echo_info "\$arg1=$arg1"
	l_00_echo_info "\$arg2=$arg2"

	if [[ -n "$3" ]]; then
		local ptr_path_3="$3"
		ptr_path_3="$(l_01_abs_path "$(pwd)" "ptr_path_3")"
		if [[ -f $ptr_path_3 ]]; then
			local arg3="$ptr_path_3"
			l_00_echo_info "\$arg3=$arg3"
		else
			echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} :: ARG3_NOT_FILE ::  EXEC : '[[ ! -f "$ptr_path_3" ]]', return 1${NRM}" >&2
			return 1
		fi

	fi

	[[ -d "$arg1" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  NOT_DIR : 'arg1=$arg1' :: root dir for .sh file , return 1${NRM}" >&2
		return 1
	}

	[[ -n "$arg2" ]] || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
		return 1
	}

	local tml_pth=${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
	local fl_nm="$arg1"/"$arg2"
	local rnd=${RANDOM}_${RANDOM}
	local fn_nm="fn_${rnd}"

	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3

	if [[ ! -f "${fl_nm}" ]]; then
		l_00_echo_info "cp $tml_pth $fn_nm"
		cp "$tml_pth" "$fl_nm"

		l_00_echo_code "l_02_s2f {{fl_nm}} ${fl_nm} ${fl_nm}"
		l_02_s2f "{{fl_nm}}" "${fl_nm}" "${fl_nm}"

		if [[ -n $arg3 ]]; then
			l_02_fs2f "$arg3" "{{body}}" "${fl_nm}"
			# in code contane "{{body}}" - not replace!
			# l_02_s2f "{{body}}" "[[body]]" "${fl_nm}"
		fi

		local fn_head=$(l_01_prs_f -n "${arg2}")

		l_00_echo_code "cp $tml_pth $fn_nm"
		l_02_s2f "{{fn_nm}}" "${fn_nm}" "${fl_nm}"
		l_02_s2f "{{head}}" "${fn_head}" "${fl_nm}"

		l_02_s2f "{{rnd}}" "${rnd}" "${fl_nm}"
	else
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  FILE_EXIST : '$dr_nm', return 1${NRM}" >&2
		return 1
	fi

	lfoe_path_to_var "${fl_nm}"

	return 0

}
