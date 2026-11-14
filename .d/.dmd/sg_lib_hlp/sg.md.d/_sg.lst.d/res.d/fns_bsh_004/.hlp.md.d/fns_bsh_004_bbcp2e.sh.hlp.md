fns_bsh_004_bbcp2e
			- DFN:: {IEN~} (tmp_link_ST_DSL: {>e} = {*e}/_{&e}.d, {e~} = {>e}/{&e}~)
			- INI:: {IEN} is pth    
			- ACT:: echo \"{IEN~}\"
			- ARG:: \$1 {IEN}
			- FLW:: echo \"{IEN~}\"

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

#@ fns_bsh_004_bbcp2e :: doing :: IEN1 is pth, echo str{IEN~}
