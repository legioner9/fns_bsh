l_00_echo_info "that :: 001_gig_tml.us.sh"

echo "dr_pth_fn=$(eval "echo \$dr_pth_fn_${rnd}")"             # ~/fns_bsh/.d/.p.ax/.p007.d
echo "prnt1_dr_pth_fn=$(eval "echo \$prnt1_dr_pth_fn_${rnd}")" # ~/fns_bsh/.d/.p.ax

l_00_echo_info "if [[ -d file://$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d ]]"
if [[ -d "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d" ]]; then

	if l_01_is_yes "QUES:: rm $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d"; then
		echo "not rm; return 1"
		return 1
	else
		l_00_echo_code "rm -rf $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d"
		rm -rf $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d
	fi
fi

l_00_echo_code "cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.dta/.pXXX.dtml $(eval "echo \$prnt1_dr_pth_fn_${rnd}")"
cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.dta/.pXXX.dtml $(eval "echo \$prnt1_dr_pth_fn_${rnd}")

l_00_echo_code "mv -r $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.pXXX.dtml $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d"
mv $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.pXXX.dtml $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.p$(eval "echo \$arg_1_fn_${rnd}").d
