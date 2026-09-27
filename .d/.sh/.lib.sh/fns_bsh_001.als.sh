fns_bsh_001_als_gig_fn_sh() {
	# . ~/fns_bsh/.d/.p.ax/.p003.d/g.pr $@
	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn ". ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	"

	. ~/fns_bsh/.d/.p.ax/.p005.d/g.pr \
		"$1" \
		"$2" \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}

fns_bsh_001_als_gig_fl_sh() {

	l_00_echo_code "start :: <${FUNCNAME[0]}>"
	l_00_echo_warn "	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		$1 \
		$2 \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	"

	. ~/fns_bsh/.d/.p.ax/.p006.d/g.pr \
		"$1" \
		"$2" \
		~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d \
		~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d
	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

}
