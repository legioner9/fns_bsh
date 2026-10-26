# do fns_bsh_002_f2fs_1
## add \$2 to fns_bsh_004_f2fs -> fns_bsh_002_f2fs_1
- add :
    - [+]if REN_EXST 
    - in IEN add : pth:pref_pth:dicr_pref_pth wh dicr_pref_pth>pth/pref_pth/_d.d
### do fns_bsh_004_gig_bldr
- {REN} = >{IEN}
    - \$1 = {IEN} \$2 = {par:(-f|-i|'')}
    - FLOW:: ( if par=-f & REN_EXST thn rm REN | if par=-i & REN_EXST thn ask=?[rm REN] (if 'y' thn rm REN not rm err1)   | par:'' : REN_EXST err1)