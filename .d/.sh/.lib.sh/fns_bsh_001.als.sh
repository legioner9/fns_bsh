fns_bsh_001_als_gig_fn_sh() {
	# . ~/fns_bsh/.d/.p.ax/.p003.d/g.pr $@
	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn ". ~/fns_bsh/.d/.p.ax/.p005.d/g.pr $@"

	l_00_echo_ques "MIN1"

	. ~/fns_bsh/.d/.p.ax/.p005.d/g.pr $@
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fn_sh_2() {
	# . ~/fns_bsh/.d/.p.ax/.p003.d/g.pr $@
	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn ". ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	"
	l_00_echo_ques "FULL1"

	. ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fn_sh_2_q() {
	# . ~/fns_bsh/.d/.p.ax/.p003.d/g.pr $@
	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn ". ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/003.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/0013.dom.tml.d
	"
	l_00_echo_ques "FULL1, NO ECHO"

	. ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/003.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.01.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fl_sh() {

	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn "	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr $@"

	l_00_echo_ques "MIN1"

	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr $@
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fl_sh_2() {

	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn "	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	"
	l_00_echo_ques "FULL1"

	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		"$1" \
		"$2" \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fl_sh_2_q() {

	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn "	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/003.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.01.dom.tml.d
	"
	l_00_echo_ques "FULL1, NO ECHO"

	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		"$1" \
		"$2" \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/003.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.01.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_epm_upd_prog() {

	epm play --update all -y

}

fns_bsh_001_als_epm_upd_pckg() {

	epm update -y
	epm ei -y

}
