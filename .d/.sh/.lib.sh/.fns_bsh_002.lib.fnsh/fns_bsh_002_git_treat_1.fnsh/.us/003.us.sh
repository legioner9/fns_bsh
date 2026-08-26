# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/002.us.sh
l_00_echo_info "that :: 003.us.sh"

# fns_bsh_002_git_treat_1_arr_rpo_pth

for rpo_pth in ${fns_bsh_002_git_treat_1_arr_rpo_pth[@]}; do
	echo ${rpo_pth}
	fns_bsh_002_git_treat_1_check_clone ${rpo_pth}
done
