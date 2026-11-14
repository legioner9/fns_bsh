fns_bsh_004_f-f2e
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

#@ fns_bsh_004_f-f2e :: doing :: inner_sh :: _dta/inner_f-f2e.sh.d/IEN1.sh [, treat file IEN2]
