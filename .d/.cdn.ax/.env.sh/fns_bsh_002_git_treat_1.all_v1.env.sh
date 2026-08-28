#!/bin/bash

l_00_echo_ques "PART_PROGRAM_IS_START :: get and check env for fns_bsh_002_git_treat_1"

#! check and cp to ~fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_git_treat_1.fnsh/fns_bsh_002_git_treat_1.sh
# local item=
# local item1=
# local item2=
# local item3=
# local item4=
# local item5=

# local fns_bsh_002_git_treat_1_arr_remote_addr=
# local fns_bsh_002_git_treat_1_arr_remote_alias=
# local fns_bsh_002_git_treat_1_arr_rpo_pth=
# local fns_bsh_002_git_treat_1_arr_remote_local=
# local fns_bsh_002_git_treat_1_arr_remote_local_alias=
# local fns_bsh_002_git_treat_1_main_repo=
# local fns_bsh_002_git_treat_1_ping=

# fns_bsh_002_git_treat_1_arr_remote_addr=(
# 	git@gitflic.ru:legioner9
# 	git@github.com:legioner9
# 	ssh://forgejo@altlinux.space/legioner9)

# fns_bsh_002_git_treat_1_arr_remote_alias=(gf gh alt)

fns_bsh_002_git_treat_1_arr_rpo_pth=(
	aer_foe
	# rpo/edu_clng
	# rpo/edu_dta_001
	# rpo/edu_dta_002
	# rpo/edu_lnx
	# rpo/tml_a
	# rpo/cmn_lex
	fns_bsh
	# rpo/git_flw
	#! rpo/rpo_dta_001
	#! rpo/rpo_dta_002
	# rpo/rpo_pax_001
	# rpo/rpo_pax_002
	# rpo/rpo_pax_sh
)

# fns_bsh_002_git_treat_1_arr_remote_addr_and_alias=(
# 	"gf git@gitflic.ru:legioner9"
# 	"gh git@github.com:legioner9"
# 	"alt ssh://forgejo@altlinux.space/legioner9"
# )

declare -A fns_bsh_002_git_treat_1_arr_remote

fns_bsh_002_git_treat_1_arr_remote[0, 0]=gf
fns_bsh_002_git_treat_1_arr_remote[0, 1]=git@gitflic.ru:legioner9
fns_bsh_002_git_treat_1_arr_remote[1, 0]=gh
fns_bsh_002_git_treat_1_arr_remote[1, 1]=git@github.com:legioner9
fns_bsh_002_git_treat_1_arr_remote[2, 0]=alt
fns_bsh_002_git_treat_1_arr_remote[2, 1]=ssh://forgejo@altlinux.space/legioner9
fns_bsh_002_git_treat_1_arr_remote[3, 0]=my_one
fns_bsh_002_git_treat_1_arr_remote[3, 1]=/run/media/$USER/MY_ONE
# fns_bsh_002_git_treat_1_arr_remote[4, 0]=tosh
# fns_bsh_002_git_treat_1_arr_remote[4, 1]=/run/media/$USER/TOSH

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote ::"
for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do
	for ((j = 0; j < 2; j++)); do
		l_00_echo_info "	[$i,$j]=${fns_bsh_002_git_treat_1_arr_remote[$i, $j]}"
	done
done

# echo "все ключи массива   : ${!massiv[@]}"
# echo "все элементы массива: ${massiv[@]}"
# echo "количество элементов массива: ${#massiv[@]}"

fns_bsh_002_git_treat_1_num_str_main_repo=0
fns_bsh_002_git_treat_1_ping="gitflic.ru"
fns_bsh_002_git_treat_1_bare_dr="new_bare"

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_rpo_pth ::"
for item2 in ${fns_bsh_002_git_treat_1_arr_rpo_pth[@]}; do
	l_00_echo_info "	$item2"
done

l_00_echo_sys "set_of_var :: ping ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_ping"

l_00_echo_sys "set_of_var :: bare_dr ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_bare_dr"

l_00_echo_sys "set_of_var :: main_repo_adr ::"
main_repo_adr=${fns_bsh_002_git_treat_1_arr_remote[$fns_bsh_002_git_treat_1_num_str_main_repo, 1]}
l_00_echo_info "	$main_repo_adr"

l_00_echo_sys "set_of_var :: main_repo_als ::"
main_repo_als=${fns_bsh_002_git_treat_1_arr_remote[$fns_bsh_002_git_treat_1_num_str_main_repo, 0]}
l_00_echo_info "	$main_repo_als"

read -p "?TRUE :: check content"
