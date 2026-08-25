# from:: ~/fns_bsh/.d/.p.ax/.p009.d/.dta/cp_to_dst.d/.us/002.us.sh
l_00_echo_info "that :: 002.us.sh"
# ~001_002_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/011.dom.tml.d/001_001_us_sh.tml
# first::
# flow :: exec main_fn=$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") with res.d

l_00_echo_info "res_dr=file://$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.g.tst.d/res.d"

local res_dr_6734sadc=$(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.g.tst.d/res.d

echo -e "@startmindmap
*:init.sh

<code>
. .bashrc
</code>
;
**:.bashrc

<code>
. .bashrc2
</code>
;
@endmindmap" >"${res_dr_6734sadc}/init.puml"
l_00_echo_warn "START_TST:: in puml : .bashrc2; flw_cr: -f"
l_00_echo_sys "$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") ${res_dr_6734sadc} init.puml @ -f"

$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") \
	"${res_dr_6734sadc}" \
	init.puml \
	"@" \
	-f
tree "${res_dr_6734sadc}" 

read -p "check reuslt!!!"

rm -r ${res_dr_6734sadc}
mkdir ${res_dr_6734sadc}

echo -e "@startmindmap
*:init.sh

<code>
. .bashrc
</code>
;
**:.bashrc

<code>
. .bashrc3
</code>
;
@endmindmap" >"${res_dr_6734sadc}/init.puml"

l_00_echo_warn "START_TST:: in puml : .bashrc3; flw_cr: -d"
l_00_echo_sys "$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") ${res_dr_6734sadc} init.puml @ -d"

$(l_01_prs_f -n "$(eval "echo \$prnt1_dr_pth_fn_${rnd}")") \
	"${res_dr_6734sadc}" \
	init.puml \
	"@" \
	-d

tree "${res_dr_6734sadc}" 

read -p "check reuslt!!!"

#-- {{002_002_us_sh}}
