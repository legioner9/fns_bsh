local fl_nm="$(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
local rnd_ins=${RANDOM}_${RANDOM}
local fn_nm_ins="fn_${rnd_ins}"

echo "insert::rnd_ins=${rnd_ins}"

l_00_echo_code "fn_head=$(l_01_prs_f -n "$(eval "echo \$arg_2_fn_${rnd}")")"
local fn_head=$(l_01_prs_f -n "$(eval "echo \$arg_2_fn_${rnd}")")


l_00_echo_code "l_02_s2f {{fl_nm}} ${fl_nm} ${fl_nm}"
l_02_s2f "{{fl_nm}}" "${fl_nm}" "${fl_nm}"

l_00_echo_code "l_02_s2f {{fn_nm}} ${fn_nm_ins} ${fl_nm}"
l_02_s2f "{{fn_nm}}" "${fn_nm_ins}" "${fl_nm}"

l_00_echo_code "l_02_s2f {{head}} ${fn_head} ${fl_nm}"
l_02_s2f "{{head}}" "${fn_head}" "${fl_nm}"

l_00_echo_code "l_02_s2f {{rnd}} ${rnd} ${fl_nm}"
l_02_s2f "{{rnd}}" "${rnd_ins}" "${fl_nm}"

lfoe_path_to_var "${fl_nm}"
