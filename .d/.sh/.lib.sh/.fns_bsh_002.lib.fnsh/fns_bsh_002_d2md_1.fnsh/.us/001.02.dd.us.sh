# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.02.dd.us.sh"
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
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	fns_bsh_002_d2md_1_dd() {

		# $1 dir $2 dip

		local anc_pth=$(fns_bsh_002_d2md_1_anc_pth "$1")
		local res_str="[$(basename "$1")]("$anc_pth")"

		local rch=$(fns_bsh_002_d2md_1_rch "$2" "#")
		if [[ ! -f "$1/_d.d" ]]; then
			echo "{$1}" >"$1/_d.d"
		fi
		echo "$rch $rch $(head -n 1 "$1/_d.d") <- dr:: $res_str <!-- file://$1 --> "$'\n' >>"$(eval "echo \$arg_2_fn_${rnd}")"

	}

fi

#-- {{002_001_us_sh}}
