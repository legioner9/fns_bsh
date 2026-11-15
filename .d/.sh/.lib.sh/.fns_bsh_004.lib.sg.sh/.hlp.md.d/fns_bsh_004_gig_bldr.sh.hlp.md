fns_bsh_004_gig_bldr
			- OVR::
				- INI:: IEN is (f|dr)
				- ACT:: {REN} = >{IEN}
				- ARG:: \$1 = {IEN} \$2 = {par:(-f|-i|-c|'')}
				- FLW:: ( if [par=-f] & [REN_EXST] thn [rm REN] | if [par=-i] & [REN_EXST] thn [ask=?{rm REN}] ( if ['y'] thn [rm REN] els [err1] ) | if [par='-c'] & [REN_EXST] thn [err1] | if [par=''] & [REN_EXST] thn [ret0] ) 
			flow_FN ::

			- OVR::
				- DFN::?\"IEN:ln\" - line of IEN
				- INI::?IEN - fl with pth, REN - dr after cp
				- ACT::?{IEN} -> {REN}
				- ARG::?\$1 = {IEN} \$2 = {REN}
				- FLW::?
					 -? (-){REN}
					 -? DFN::\"IEN:ln\" == \"IEN:pth\"[:\"IEN:add\"[^\"IEN:str\"]]
					 -? cp {\"IEN:pth\"} {REN}/\"IEN:add\"
				- NTE::
					-? (. start.sh {arg.MD}) gig {arg.MD} from {*.lst}

#@ fns_bsh_004_gig_bldr :: {REN} = \>{IEN}, IEN is \(f\|dr\), IEN1 = {IEN} IEN2 = {par:\(-f\|-i\|-c\| \)}
