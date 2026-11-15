fns_bsh_002_d2md_2
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

#@ fns_bsh_002_d2md_2 :: !!DPR!! add toc to .md giged as fns_bsh_002_d2md_1 IEN= dr_with_fl::IEN1 , REN=res_md_fl::IEN2 see exa : .src exa_1.d
