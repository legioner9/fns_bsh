# # {/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d} <- dr:: [tst_1.d](../_res.cpl.dmd.d.f.d/tst_1.d) <!-- file:///home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d --> 

##  <!-- { --> ##  {/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d/1.md} <!-- } --> <- fl:: [1.md](../_res.cpl.dmd.d.f.d/tst_1.d/1.md) <!-- file:///home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d/1.md -->

```md
# чтобы добавить текст file2.txt в file1.txt после определенной строки по номеру

    sed -i '2 r file2.txt' file1.txt

# по паттерну

    sed -i '/^YourPattern/ r file2.txt' file1.txt

```

