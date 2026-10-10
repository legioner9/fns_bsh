fl=~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_005.lib.und.sh/_tst/fns_bsh_004_f-f2e.tst.d/file

l_00_echo_code "fns_bsh_004_f-exec2e $fl"
fns_bsh_004_f-exec2e "$fl"

echo

fl=~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_005.lib.und.sh/_tst/fns_bsh_004_f-exec2e.tst.d/file
l_00_echo_code "cat $fl | fns_bsh_004_f-exec2e"
cat "$fl" | fns_bsh_004_f-exec2e

echo

fl=~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_005.lib.und.sh/_tst/fns_bsh_004_f-exec2e.tst.d/file
l_00_echo_code "fns_bsh_004_f-exec2e <$fl"
fns_bsh_004_f-exec2e <"$fl"

echo

fl=~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_005.lib.und.sh/_tst/fns_bsh_004_f-exec2e.tst.d/file
l_00_echo_code "fns_bsh_004_f-exec2e ${fl}X"
fns_bsh_004_f-exec2e "$fl"X
