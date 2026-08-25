# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.us.sh"
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
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	if [[ $(eval "echo \$arg_3_fn_${rnd}") == "@" ]]; then
		eval "eval arg_3_fn_${rnd}=\$arg_1_fn_${rnd}"
	fi

	read -p "?TRUE:arg_3=$(eval "echo \$arg_3_fn_${rnd}")"

	local ien_we3244fcer=$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
	local ren_nm_fewr25542=$(l_01_prs_f -ne "$ien_we3244fcer").png
	local ren_3457rtver=$(eval "echo \$arg_3_fn_${rnd}")/${ren_nm_fewr25542}
	local ren_if_d_3457rtver=$(eval "echo \$arg_3_fn_${rnd}")/$(l_01_prs_f -ne "$ien_we3244fcer").d/${ren_nm_fewr25542}
	local jar_puml_24wef3434=~/fns_bsh/.d/.cdn.ax/java/plantuml.jar

	if [[ $(eval "echo \$arg_4_fn_${rnd}") == "-f" ]]; then

		cat "${ien_we3244fcer}" | java -jar ${jar_puml_24wef3434} -stdrpt:1 -pipe >${ren_3457rtver}

	fi

	if [[ $(eval "echo \$arg_4_fn_${rnd}") == "-d" ]]; then
		if [[ ! -d $(eval "echo \$arg_3_fn_${rnd}")/$(l_01_prs_f -ne "$ien_we3244fcer").d ]]; then
			l_00_echo_code "mkdir $(eval "echo \$arg_3_fn_${rnd}")/$(l_01_prs_f -ne "$ien_we3244fcer").d"
			mkdir $(eval "echo \$arg_3_fn_${rnd}")/$(l_01_prs_f -ne "$ien_we3244fcer").d
		fi
		cat "${ien_we3244fcer}" | java -jar ${jar_puml_24wef3434} -stdrpt:1 -pipe >${ren_if_d_3457rtver}

	fi

fi

#-- {{002_001_us_sh}}
