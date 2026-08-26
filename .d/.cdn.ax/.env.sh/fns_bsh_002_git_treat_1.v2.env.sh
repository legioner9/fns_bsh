#!/bin/bash

l_00_echo_ques "PART_PROGRAM_IS_START :: check env for fns_bsh_002_git_treat_1"

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
	rpo/rpo_dta_001
	tml_a
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
fns_bsh_002_git_treat_1_arr_remote[4, 0]=tosh
fns_bsh_002_git_treat_1_arr_remote[4, 1]=/run/media/$USER/TOSH

# echo "все ключи массива fns_bsh_002_git_treat_1_arr_remote: ${!fns_bsh_002_git_treat_1_arr_remote[@]}"
# echo "все элементы массива fns_bsh_002_git_treat_1_arr_remote: ${fns_bsh_002_git_treat_1_arr_remote[@]}"
# echo "количество элементов массива fns_bsh_002_git_treat_1_arr_remote: ${#fns_bsh_002_git_treat_1_arr_remote[@]}"

# for i in 0 1 2; do
# 	echo "str=$i"
# 	for j in 0 1; do
# 		echo "col=$j ${fns_bsh_002_git_treat_1_arr_remote_addr_and_alias[$i, $j]}"
# 	done
# done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote ::"
for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do
	for ((j = 0; j < 2; j++)); do
		l_00_echo_info "	[$i,$j]=${fns_bsh_002_git_treat_1_arr_remote[$i, $j]}"
	done
done

fns_bsh_002_git_treat_1_arr_remote_local=(/run/media/$USER/MY_ONE
	/run/media/$USER/TOSH)

fns_bsh_002_git_treat_1_arr_remote_local_alias=(my_one tosh)

fns_bsh_002_git_treat_1_num_str_main_repo=0
fns_bsh_002_git_treat_1_ping="gitflic.ru"



# l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_addr ::"
# for item in ${fns_bsh_002_git_treat_1_arr_remote_addr[@]}; do
# 	l_00_echo_info "	$item"
# done

# l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_alias ::"
# for item1 in ${fns_bsh_002_git_treat_1_arr_remote_alias[@]}; do
# 	l_00_echo_info "	$item1"
# done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_rpo_pth ::"
for item2 in ${fns_bsh_002_git_treat_1_arr_rpo_pth[@]}; do
	l_00_echo_info "	$item2"
done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_local ::"
for item3 in ${fns_bsh_002_git_treat_1_arr_remote_local[@]}; do
	l_00_echo_info "	$item3"
done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_local_alias ::"
for item4 in ${fns_bsh_002_git_treat_1_arr_remote_local_alias[@]}; do
	l_00_echo_info "	$item4"
done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_num_str_main_repo ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_num_str_main_repo"

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_ping ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_ping"

read -p "?TRUE :: check content"
