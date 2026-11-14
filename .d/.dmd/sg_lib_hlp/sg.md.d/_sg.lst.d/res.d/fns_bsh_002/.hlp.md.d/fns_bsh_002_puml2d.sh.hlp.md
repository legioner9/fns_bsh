fns_bsh_002_puml2d
			REN=fl.puml.png
			\$1 - *{IEN}
			\$2 - &{IEN}
			\$3 - if(*{REN}==*{IEN});then\$3=@;else \$3=*{REN};fi
			\$4 - flw_char : 
				-f - {REN}=*{REN}/&{IEN}.png
				-d - {REN}=*{REN}/&{IEN}.d/&{IEN}.png

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

#@ fns_bsh_002_puml2d :: doing :: + IEN=fl.puml REN=fl.puml.png IEN1=*{IEN} IEN2=&{IEN}
