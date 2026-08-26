#!/bin/bash

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

fns_bsh_002_git_treat_1_arr_remote_addr=(git@gitflic.ru:legioner9
	git@github.com:legioner9
	ssh://forgejo@altlinux.space/legioner9)

fns_bsh_002_git_treat_1_arr_remote_alias=(gf gh alt)

fns_bsh_002_git_treat_1_arr_rpo_pth=(
	tml_a
)

fns_bsh_002_git_treat_1_arr_remote_local=(/run/media/$USER/MY_ONE
	/run/media/$USER/TOSH)

fns_bsh_002_git_treat_1_arr_remote_local_alias=(my_one tosh)

fns_bsh_002_git_treat_1_main_repo="gf"
fns_bsh_002_git_treat_1_ping="gitflic.ru"

l_00_echo_ques "PART_PROGRAM_IS_START :: check env for fns_bsh_002_git_treat_1"

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_addr ::"
for item in ${fns_bsh_002_git_treat_1_arr_remote_addr[@]}; do
	l_00_echo_info "	$item"
done

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_arr_remote_alias ::"
for item1 in ${fns_bsh_002_git_treat_1_arr_remote_alias[@]}; do
	l_00_echo_info "	$item1"
done

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

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_main_repo ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_main_repo"

l_00_echo_sys "set_of_arr :: fns_bsh_002_git_treat_1_ping ::"
l_00_echo_info "	$fns_bsh_002_git_treat_1_ping"

read -p "?TRUE :: check content"
