#!/bin/bash

fn_vewthhg5231454gfvs() {
	l_00_echo_code "start::fn_vewthhg5231454gfvs"
	# echo $1
	# return 0

	#! start RM BAD DIR ------------

	if [[ -d $HOME/aer_foe/.d/.depo/ifo.d/ifo ]]; then
		l_00_echo_info "bad string:"
		. $HOME/aer_foe/.d/.depo/ifo.d/down $HOME/aer_foe/.d/.depo/ifo.d
		if [[ -d $HOME/aer_foe/.d/.depo/ifo ]]; then
			echo -e "${ECHO_RET1}in file://$HOME\aer_foe\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ -d $HOME/aer_foe/.d/.depo/ifo.d/ifo ]]' in $(pwd), 'RESUME :: BAD dir steel EXIST' return 1${NRM}" >&2
			return 1
		fi
	fi

	#! end ------------------------

	#! start lfoe_rpo2git
	l_00_echo_code "start::lfoe_rpo2git aer_foe $1"
	lfoe_rpo2git aer_foe "$1" || {
		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : ' lfoe_rpo2git aer_foe "$1" ', return 1${NRM}" >&2
		return 1
	}

	if [[ $1 == "-h" || $1 == "-i" ]]; then
		return 0
	fi

	#! end lfoe_rpo2git

	#! far any function

	local repo_all_arr_234543htrbg=(aer_foe edu_clng edu_dta_001 edu_dta_002 edu_lnx tml_a cmn_lex fns_bsh git_flw)
	local repo_any_arr_234543htrbg=(edu_clng edu_dta_001 edu_dta_002 edu_lnx tml_a cmn_lex fns_bsh git_flw)

	#! ~/rpo
	local repo_in_rpo_any_arr_234543htrbgfwr3442=(rpo_dta_001 rpo_pax_001 rpo_pax_sh)

	# local repo_all_arr_234543htrbg=(aer_foe edu_clng edu_lnx tml_a cmn_lex fns_bsh git_flw)
	# local repo_any_arr_234543htrbg=(edu_clng edu_lnx tml_a cmn_lex fns_bsh git_flw)

	cd ${DDir}
	check_repo_adcae_12344() {
		l_00_echo_code "start::check_repo_adcae_12344"
		if [[ ! -d $HOME/$adcae_12344 ]]; then
			echo -e "${ECHO_WARN}in file://$HOME\aer_foe\.d\.sh\rpo2git.sh , line=${LINENO} edu_lnx REPO_NOT_EXIST return 1${NRM}" >&2
			cd ~
			git clone git@gitflic.ru:legioner9/$adcae_12344.git
			cd $HOME/$adcae_12344
			git remote add gh git@github.com:legioner9/$adcae_12344.git
			git remote add gf git@gitflic.ru:legioner9/$adcae_12344.git
			git remote add alt ssh://forgejo@altlinux.space/legioner9/$adcae_12344.git
		fi
		l_00_echo_code "end::check_repo_adcae_12344"
	}

	check_repo_in_rpo_adcae_1234asew4() {
		l_00_echo_code "start::check_repo_in_rpo_adcae_1234asew4"
		if [[ ! -d $HOME/rpo/$adcae_in_rpo_12344 ]]; then
			echo -e "${ECHO_WARN}in file://$HOME\aer_foe\.d\.sh\rpo2git.sh , line=${LINENO} edu_lnx REPO_NOT_EXIST return 1${NRM}" >&2
			mkdir $HOME/rpo/
			cd $HOME/rpo/
			git clone git@gitflic.ru:legioner9/$adcae_in_rpo_12344.git
			cd $HOME/rpo/$adcae_in_rpo_12344
			git remote add gh git@github.com:legioner9/$adcae_in_rpo_12344.git
			git remote add gf git@gitflic.ru:legioner9/$adcae_in_rpo_12344.git
			git remote add alt ssh://forgejo@altlinux.space/legioner9/$adcae_in_rpo_12344.git
		fi
		l_00_echo_code "end::check_repo_in_rpo_adcae_1234asew4"
	}
	local item=

	l_00_echo_info "LIST ALL rpo_nm:"

	for item in ${repo_all_arr_234543htrbg[@]}; do
		l_00_echo_code $item
	done

	l_00_echo_info "STP:: add remote to ANY repo"
	unset IFS
	local item_132456125=
	for item_132456125 in ${repo_any_arr_234543htrbg[@]}; do

		l_00_echo_info "--- treat $item_132456125 ---"
		adcae_12344=$item_132456125
		check_repo_adcae_12344

	done

	l_00_echo_info "LIST ALL rpo_nm in rpo:"
	local item_12342=
	for item_12342 in ${repo_in_rpo_any_arr_234543htrbgfwr3442[@]}; do
		l_00_echo_code $item_12342
	done

	adcae_in_rpo_12344=

	l_00_echo_info "STP:: add remote to ANY rpo in rpo"
	unset IFS
	local item_rpo_132456125=
	for item_rpo_132456125 in ${repo_in_rpo_any_arr_234543htrbgfwr3442[@]}; do

		l_00_echo_info "--- treat $item_rpo_132456125 ---"
		adcae_in_rpo_12344=$item_rpo_132456125
		check_repo_in_rpo_adcae_1234asew4

	done

	adcae_12344=

	start_all_rpo2git_32eggsd() {
		l_00_echo_code "start::start_all_rpo2git_32eggsd"
		if [[ -f $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh ]]; then
			. $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh
		else
			echo -e "${ECHO_WARN}in file://$HOME\$nm_rpo2git_2345ff\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ -f $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh ]]' in $(pwd), 'RESUME :: $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh IS_NOT file' return 1${NRM}" >&2

		fi
		l_00_echo_code "end::start_all_rpo2git_32eggsd"
	}

	local item4=

	l_00_echo_info "STP:: start rpo2git.sh in ANY rpo"

	local nm_rpo2git_2345ff=

	for item4 in ${repo_any_arr_234543htrbg[@]}; do
		l_00_echo_code "in ${item4}"
		nm_rpo2git_2345ff=${item4}
		start_all_rpo2git_32eggsd
	done

	add_local_repo_56277647() {
		l_00_echo_code "start::add_local_repo_56277647"
		l_00_echo_code "\$part_bare=$part_bare"

		# sudo find /run/media/stl/TOSH/ -type d -exec chmod 755 {} \;
		# sudo find /run/media/stl/TOSH/ -type f -exec chmod 644 {} \;

		if [[ -d "$part_bare/" ]]; then
			l_00_echo_info "STP:: for ALL rpo - init bare if not exist"
			if ! [[ -d "$part_bare/new_bare" ]]; then
				mkdir -p "$part_bare/new_bare"
			fi

			if [[ $(stat -c "%U" $part_bare/new_bare/) != "$USER" ]]; then
				sudo chown -R $USER $part_bare/new_bare/
			fi

			local item2=
			for item2 in ${repo_all_arr_234543htrbg[@]}; do
				l_00_echo_code "in $item2"
				if ! [[ -d "$part_bare/new_bare/${item2}" ]]; then

					mkdir -p "$part_bare/new_bare/${item2}"

					if [[ $(stat -c "%U" $part_bare/new_bare/${item2}) != "$USER" ]]; then
						l_00_echo_code "sudo chown -R $USER $part_bare/new_bare/${item2}"
						sudo chown -R $USER $part_bare/new_bare/${item2}
					fi

					l_00_echo_code "cd $part_bare/new_bare/${item2}"
					cd "$part_bare/new_bare/${item2}"
					git init --bare
				fi

			done

			l_00_echo_info "STP:: git push to local bare ALL rpo"

			local item3=
			for item3 in ${repo_all_arr_234543htrbg[@]}; do
				l_00_echo_info "---in ~/${item3}---"
				cd ~/${item3}
				git push $part_bare/new_bare/${item3} master
			done

		else

			l_00_echo_err "$part_bare NOT_EXIST"

		fi
		l_00_echo_code "end::add_local_repo_56277647"
	}

	add_local_repo_from_rpo_56277647vcafdfd() {
		l_00_echo_code "start::add_local_repo_from_rpo_56277647vcafdfd"
		l_00_echo_code "\$part_bare=$part_bare"

		# sudo find /run/media/stl/TOSH/ -type d -exec chmod 755 {} \;
		# sudo find /run/media/stl/TOSH/ -type f -exec chmod 644 {} \;

		if [[ -d "$part_bare/" ]]; then
			l_00_echo_info "STP:: for ALL rpo - init bare if not exist"
			if ! [[ -d "$part_bare/new_bare" ]]; then
				mkdir -p "$part_bare/new_bare"
			fi

			if [[ $(stat -c "%U" $part_bare/new_bare/) != "$USER" ]]; then
				sudo chown -R $USER $part_bare/new_bare/
			fi

			local item2=
			for item2 in ${repo_in_rpo_any_arr_234543htrbgfwr3442[@]}; do
				l_00_echo_code "in $item2"
				if ! [[ -d "$part_bare/new_bare/${item2}" ]]; then

					mkdir -p "$part_bare/new_bare/${item2}"

					if [[ $(stat -c "%U" $part_bare/new_bare/${item2}) != "$USER" ]]; then
						l_00_echo_code "sudo chown -R $USER $part_bare/new_bare/${item2}"
						sudo chown -R $USER $part_bare/new_bare/${item2}
					fi

					l_00_echo_code "cd $part_bare/new_bare/${item2}"
					cd "$part_bare/new_bare/${item2}"
					git init --bare
				fi

			done

			l_00_echo_info "STP:: git push to local bare ALL rpo"

			local item3=
			for item3 in ${repo_in_rpo_any_arr_234543htrbgfwr3442[@]}; do
				l_00_echo_info "---in ~/${item3}---"
				cd ~/rpo/${item3}
				git push $part_bare/new_bare/${item3} master
			done

		else

			l_00_echo_err "$part_bare NOT_EXIST"

		fi
		l_00_echo_code "end::add_local_repo_from_rpo_56277647vcafdfd"
	}

	# in .gitconfig :
	# [safe]
	# directory = G:/new_bare/aer_foe
	# directory = G:/new_bare/edu_clang
	# directory = G:/new_bare/aer_dta
	# directory = G:/new_bare/aer_lnx

	local part_bare="G:"
	add_local_repo_56277647
	add_local_repo_from_rpo_56277647vcafdfd

	part_bare="/run/media/$USER/MY_ONE"
	add_local_repo_56277647
	add_local_repo_from_rpo_56277647vcafdfd

	part_bare="/run/media/$USER/TOSH"
	add_local_repo_56277647
	add_local_repo_from_rpo_56277647vcafdfd

	# local repo_in_rpo_any_arr_234543htrbgfwr3442=(rpo_dta_001 rpo_dta_002 rpo_pax_001 rpo_pax_002 rpo_pax_sh)
	local item_pth_rpo=
	for item_pth_rpo in ${repo_in_rpo_any_arr_234543htrbgfwr3442[@]}; do
		if [[ -f $HOME/rpo/$item_pth_rpo/.d/.sh/rpo2git.sh ]]; then
			. $HOME/rpo/$item_pth_rpo/.d/.sh/rpo2git.sh
		else
			echo -e "${ECHO_WARN}in file://$HOME\$nm_rpo2git_2345ff\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ -f $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh ]]' in $(pwd), 'RESUME :: $HOME/$nm_rpo2git_2345ff/.d/.sh/rpo2git.sh IS_NOT file' return 1${NRM}" >&2
		fi
	done
	l_00_echo_code "end::fn_vewthhg5231454gfvs"
}

fn_vewthhg5231454gfvs $@
