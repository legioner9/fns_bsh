# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.02.check_env.us.sh"
# ~001_001_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/0012.dom.tml.d/001_001_us_sh.tml
# first:: for .p015.d gig 001.us.sh

# check exist $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
# echo -e " arg_flow ::
# if src_dir :: $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
# \$1 root_dr \$2 ::
# dr - result dr
# fl - result fl
# "
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

l_00_echo_sys "get :: fns_bsh_002_git_treat_1_arr_usb ::"

for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do

	fns_bsh_002_git_treat_1_adr=${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}

	if [[ ${fns_bsh_002_git_treat_1_adr:0:1} == "/" ]]; then
		echo "fns_bsh_002_git_treat_1_adr=$fns_bsh_002_git_treat_1_adr"
		fns_bsh_002_git_treat_1_arr_usb+=("$fns_bsh_002_git_treat_1_adr")
	fi

done

echo "fns_bsh_002_git_treat_1_arr_usb=(${fns_bsh_002_git_treat_1_arr_usb[@]})"

l_00_echo_sys "get :: fns_bsh_002_git_treat_1_arr_net ::"

for ((i = 0; i < "$((${#fns_bsh_002_git_treat_1_arr_remote[@]} / 2))"; i++)); do

	fns_bsh_002_git_treat_1_adr=${fns_bsh_002_git_treat_1_arr_remote[$i, 1]}

	if [[ ${fns_bsh_002_git_treat_1_adr:0:1} != "/" ]]; then
		echo "fns_bsh_002_git_treat_1_adr=$fns_bsh_002_git_treat_1_adr"
		fns_bsh_002_git_treat_1_arr_net+=("$fns_bsh_002_git_treat_1_adr")
	fi

done

echo "fns_bsh_002_git_treat_1_arr_net=(${fns_bsh_002_git_treat_1_arr_net[@]})"

l_00_echo_sys "check :: fns_bsh_002_git_treat_1_arr_usb ::"

unset item3
for item3 in ${fns_bsh_002_git_treat_1_arr_usb[@]}; do

	if [[ -d "$item3" ]]; then
		l_00_echo_info "	$item3"
	else
		l_00_echo_err "		$item3"
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  NOT_DIR : 'bare_usb=$item3', return 1${NRM}" >&2
		return 1
	fi
done

echo "fns_bsh_002_git_treat_1_arr_usb=(${fns_bsh_002_git_treat_1_arr_usb[@]})"

l_00_echo_sys "check net :: fns_bsh_002_git_treat_1_arr_net ::"

unset item4
for item4 in ${fns_bsh_002_git_treat_1_arr_net[@]}; do
	if [[ -n "$item4" ]]; then
		l_00_echo_warn "if arr_net not empty then check ONLY 'ping $fns_bsh_002_git_treat_1_ping'"
		ping "$fns_bsh_002_git_treat_1_ping" -c 1 >/dev/null || {
			echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ping gitflic.ru -c 1 >/dev/null ]]', return 1${NRM}" >&2
			return 1
		}
	fi
	break
done

read -p "?TRUE :: check content2"

#-- {{002_001_us_sh}}
