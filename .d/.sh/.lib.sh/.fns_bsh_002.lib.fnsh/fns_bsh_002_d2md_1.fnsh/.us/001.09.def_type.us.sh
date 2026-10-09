# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.09.def_type.us.sh"
l_00_echo_ques "... DFN:: fn()...| BODY::..."
# ~001_001_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/0012.dom.tml.d/001_001_us_sh.tml
# first:: for .p015.d gig 001.us.sh

# check exist $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
echo -e " arg_flow ::
if src_dir :: $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
\$1 root_dr \$2 ::
dr - result dr
fl - result fl
"
# arg1 ::
# $(eval "echo \$arg_1_fn_${rnd}")
# arg2 ::
# $(eval "echo \$arg_2_fn_${rnd}")

# fl_pth_fn ::
# $(eval "echo \$fl_pth_fn_${rnd}")
# dr_pth_fn ::
# $(eval "echo \$dr_pth_fn_${rnd}")
# fl_nm_fn ::
# $(eval "echo \$fl_nm_fn_${rnd}")
# prnt1_dr_pth_fn ::
# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")
# prnt2_dr_pth_fn ::
# $(eval "echo \$prnt2_dr_pth_fn_${rnd}")

eval "flow_1_${rnd}=dr"
$(eval "echo \$flow_1_${rnd}")
l_00_echo_code "l_01_c_up $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh"
l_01_c_up $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh
read -p "l_01_c_up fns_bsh_002_d2md_1_def_type"
if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	fns_bsh_002_d2md_1_def_type() {
		# l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
		# source "$(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/init.env.type_fl.0.sh"
		# $1 fl
		local ext="$(l_01_prs_f -e "$1")"
		# 		[[ "$tst_var_def_type_1" -eq 1 ]] && l_00_echo_warn "ext=$ext \
		# $((${#fns_bsh_002_d2md_1_type_fl[@]} / 2))"
		local cur_type=
		# unset i
		# #..100 hard core from
		# for ((i = 0; i < 100; i++)); do
		# 	# for ((i = 0; i < "$((${#fns_bsh_002_d2md_1_type_fl[@]} / 2))"; i++)); do
		# 	# echo i=$i
		# 	[[ "$tst_var_def_type_1" -eq 1 ]] && l_00_echo_warn "\${fns_bsh_002_d2md_1_type_fl[$i, 0]}=${fns_bsh_002_d2md_1_type_fl[$i, 0]}"
		# 	cur_type="${fns_bsh_002_d2md_1_type_fl[$i, 0]}"

		# 	[[ "$tst_var_def_type_1" -eq 1 ]] && l_00_echo_warn "echo i=$i cur_type=$cur_type"

		# 	if [[ "$cur_type" == "$ext" ]]; then
		# 		echo "${fns_bsh_002_d2md_1_type_fl[$i, 1]}"

		# 		[[ "$tst_var_def_type_1" -eq 1 ]] && read -p fns_bsh_002_d2md_1_def_type

		# 		return 0
		# 	fi
		local file_lst_type=
		# echo "? file://$(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/env.type.lst.d"
		for file_lst_type in $(l_02_d2e $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/env.type.lst.d lst); do

			# l_00_echo_info "\$file_lst_type=$file_lst_type"
			# l_00_echo_info "\$ext=$ext"

			# file "$(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/env.type.lst.d/$file_lst_type"

			if grep "$ext" $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/env.type.lst.d/$file_lst_type >/dev/null; then

				echo "$(l_01_prs_f -n $file_lst_type)"
				# l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'" #exit

				# read -p see_result

				return 0
				
			fi

		done

		echo "any"

		# l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
		return 0

	}

fi

#-- {{002_001_us_sh}}
