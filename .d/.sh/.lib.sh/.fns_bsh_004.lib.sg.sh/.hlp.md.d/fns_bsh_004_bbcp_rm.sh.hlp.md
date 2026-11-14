fns_bsh_004_bbcp_rm
			- DFN:: {IEN~} (tmp_link_ST_DSL: {>e} = {*e}/_{&e}.d, {e~} = {>e}/{&e}~)
			- INI:: {IEN} (dr|fl)
			- ACT:: (<[[fbl4]]gig_bbcp {IEN}\>) -a (rm {IEN})
			- ARG:: \$1 {IEN} 
			- FLW::  <[[fbl4]]bbcp {IEN}> ; [DO_RM_IEN] 

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

#@ fns_bsh_004_bbcp_rm :: doing :: ? {IEN1} - dr fl rm with fbl4_bbcp {IEN}pic
