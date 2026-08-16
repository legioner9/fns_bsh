l_00_echo_info "that :: 001_gig_tml.us.sh"

# gig pr_dr=\$1

if [[ ! -d "$(eval "echo \$arg_1_fn_${rnd}")" ]]; then
	echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  NOT_DIR : '\$1 root_dr pr', return 1${NRM}" >&2
	return 1
fi
l_00_echo_code "if [[ -d file://$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}") ]]"
if [[ -d "$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")" ]]; then

	if l_01_is_yes "rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"; then
		l_00_echo_code "rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
		rm -r $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
	fi

fi

mkdir $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

# gig pr_dr/mgt.sh from [fns_bsh_001_als_gig_fl_sh]

# gig init dr pr_dr/\$2 from [~/fns_bsh/.d/.p.ax/.p010.d/g.pr]
