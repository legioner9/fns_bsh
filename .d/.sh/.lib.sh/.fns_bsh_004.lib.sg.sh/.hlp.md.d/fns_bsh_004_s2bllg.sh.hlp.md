fns_bsh_004_s2bllg
			- OVR::
			    - INI:: IEN1 is EN, IEN2 is STRING
    			- ACT:: echo \"IEN2\" > [>{IEN1}:lg]
    			- ARG:: \$1 = {IEN1} \$2 = \"IEN2\" \$3 = {par[fns_bsh_004_gig_bldr]:(-f|-i|-c|'')}
    			- FLW:: [[l4]]gig_bldr {IEN1}, echo \"IEN2\" > [>{IEN1}:lg]

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

#@ fns_bsh_004_s2bllg :: {IEN1} ent, IEN2 = .d.IEN2.d. str, IEN3 = {par.cl.fns_bsh_004_gig_bldr.cr.:\(-f\|-i\|-c\|.u..u.\)}
