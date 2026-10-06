<a name="top"></a>
<a class=top-link hide href="#top">↑</a>

<style type="text/css">
   .top-link {
    transition: all .25s ease-in-out;
    position: fixed;
    bottom: 0;
    right: 0;
    display: inline-flex;
    color: #000000;

    cursor: pointer;
    align-items: center;
    justify-content: center;
    margin: 0 2em 2em 0;
    border-radius: 50%;
    padding: .25em;
    width: 1em;
    height: 1em;
    background-color: #F8F8F8;
}

h1{
    color: rgb(155, 0, 218);
    font-weight: normal;
    font-style: italic;
    font-weight:bold;

}
h2{
    color: rgb(155, 40, 238);
    font-style: italic;
    font-weight:bold;
}
h3{
    color: rgb(155, 80, 218);
    font-style: italic;
    font-weight:bold;
}
h4{
    color: rgb(155, 120, 218);
    font-style: italic;
    font-weight:bold;
}
h5{
    color: rgb(155, 160, 218);
    font-style: italic;
    font-weight:bold;
}
h6 {
    color: rgb(155, 200, 230);
    font-style: italic;
    font-weight:bold;
}
</style>

Start Contents Menu

<!-- STOC  --> 

- <a href=#trwRZzRh5Ko6j1a1rbANAuOmWai6zY77> ##  {/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d/1.md} </a>
<!-- ETOC  -->

# # {/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d} <- dr:: [tst_1.d](../_res.cpl.dmd.d.f.d/tst_1.d) <!-- file:///home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d --> 

##  <!-- { --> ##  {/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d/1.md} <!-- } --> <- fl:: [1.md](../_res.cpl.dmd.d.f.d/tst_1.d/1.md) <!-- file:///home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_3.fnsh/.g.tst.d/res.d/_res.cpl.dmd.d.f.d/tst_1.d/1.md -->

```md
# чтобы добавить текст file2.txt в file1.txt после определенной строки по номеру

    sed -i '2 r file2.txt' file1.txt

# по паттерну

    sed -i '/^YourPattern/ r file2.txt' file1.txt

```

