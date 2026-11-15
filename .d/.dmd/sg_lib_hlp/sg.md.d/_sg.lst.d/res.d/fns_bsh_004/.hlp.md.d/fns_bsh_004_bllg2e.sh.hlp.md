fns_bsh_004_bllg2e
			>{EN}:lg = >{EN}/&{EN}.lg.f
			- OVR::
				- INI:: IEN1 is EN
				- ACT:: echo \">{EN}:lg\"
				- ARG:: \$1 = {IEN1}
				- FLW:: echo \">{EN}:lg\"

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

#@ fns_bsh_004_bllg2e :: ? IEN=
