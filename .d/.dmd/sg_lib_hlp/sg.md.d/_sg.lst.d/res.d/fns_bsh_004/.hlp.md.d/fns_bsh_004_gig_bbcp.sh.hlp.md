fns_bsh_004_gig_bbcp
			- DFN:: {IEN~} (tmp_link_ST_DSL: {>e} = {*e}/_{&e}.d, {e~} = {>e}/{&e}~)
			- INI:: {IEN} is (dr|fl)
			- ACT:: cp {IEN} {IEN~}
			- ARG:: \$1 {IEN}
			- FLW:: ifexst {IEN~} thn rm {IEN~} ; cp {IEN} {IEN~}

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

#@ fns_bsh_004_gig_bbcp :: doing :: cp IEN to \{IEN~\}
