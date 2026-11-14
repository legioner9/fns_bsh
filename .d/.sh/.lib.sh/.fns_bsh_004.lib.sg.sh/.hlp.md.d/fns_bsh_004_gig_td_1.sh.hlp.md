fns_bsh_004_gig_td_1
			- OVR:: gig template dir 1
				- DFN:: RDR={IEN1}/\"IEN2\".md.d
				- INI:: IEN1={dr} , IEN2 "nm_fl" REN=FLS
				- ACT:: mk {RDR}; mk {RDR}/...
				- ARG::\$1 = {IEN1} \$2 = \"IEN2\"
				- FLW::
					 - (ifq-err){RDR}
					 - mk {RDR}
					 - echo #pth_e:post_dr^str_to_post_dr > {RDR}/\"IEN2\".lst
					 - G_PR with body :: <fn_gig_md {RDR}/\"IEN2\".lst {RDR}/\"IEN2\".MD>
			- NTE::
				-(. start.sh {arg.MD}) gig {arg.MD} from {*.lst}

#@ fns_bsh_004_gig_td_1 :: doing :: \{IEN1\} - dr , .d.IEN2.d. .d.nm_fl.d.
