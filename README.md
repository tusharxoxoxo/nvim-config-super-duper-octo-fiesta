# nvim-config-super-duper-octo-fiesta
My configuration files and tools

This is tushar's configuration repo. Feel free to use whatever you would like from it! It'd be great if you mentioned where it came from if you think it's cool.

in the end it will look like this
![alt text](https://github.com/tusharxoxoxo/nvim-config-super-duper-octo-fiesta/blob/cookies/Screenshot%202023-06-22%20at%2013.51.51.jpg)

and here is the link for the background waifu photo, i have kept my nvim transparent, so this photo u need to add to your terminal background
https://github.com/tusharxoxoxo/nvim-config-super-duper-octo-fiesta/blob/cookies/sexy-anime-girl-in-space-jtrt80grfiym6iyx.jpeg

If you like what I'm doing, consider supporting me by clicking the heart button above!

Major areas include:

Prerequisite: install [ripgrep](https://github.com/BurntSushi/ripgrep).

## xdg_config

This area contains the configuration I want to share between machines that will go to `$XDG_CONFIG_HOME` (generally, `~/.config`).

Here is a small list of shortcuts (space is my leader key)
1. `nvim .` for opening the explorer
2. `%` to create a new file
3. `d` to create a new directory
4. `:Ex` for opening the Explorer
5. `<leader>pv` for opening the explorer
6. `:so` to source that file
7. a small tip for indentation: `=ap` for indenting the entire file
8. `=` After highlighting in visual mode, this will indent the highlighted portion
9. `:PackerSync` for synching packers
10. `<leader>pf` find files by typing their name
11. `<leader>ps` this opens grep find words in the entire directory
12. `ciw` delete the current word and go to insert mode
13. `lua ColorMyPencils()` After doing :PackerSync the background waifu disappears, this is to bring our waifu back
14. `:TSPlaygroundToggle` A syntax tree, also known as a parse tree or abstract syntax tree (AST), is a hierarchical representation of the syntactic structure of a program or a piece of code. It illustrates how the various elements of the code relate to each other grammatically.
    Harpoon shortcuts
15. `control e` harpoon menu
16. `<leader>a` add file to harpoon
17. `control h` file 1 in harpoon
18. `control t` file 2 in harpoon
19. `control n` file 3 in Harpoon
20. `control s` file 4 in Harpoon



21. `<leader>u` undotree toggle
22. `control ww` for window switch (usually control w should do the window switch, but it's just not working so ww
23. `<leader>gs` manipulate inside a git repo



24. `K` and `J`, first highlight the text, then these two keys we can move up and down carrying the highlighted text
25. `control u` for page up
26. `control d` for page down
27. `/something` this search something in that file




28. `n` for the next occurrence of that search thing, but for that first we need to get out of searching by pressing enter, and `shift n` or `N` to go backwards
29. `:%s/original-name/new-name/g` here `%s` is for searching something, `/original-name` for searching this name, `/new-name` for the new name, `/g` for doing this globally
30. `:s/original-name/new-name/g` if we only want to change the occurence of a specific word in a single line
31. `:%s/original-name/new-name` if we want to replace all the first instance of a specific word in all the lines
32. `:%s#/#doom#g` if we want to replace the occurence of `//` in our file then we can use a different delimiter say `#`




    lsp ones
35. `control p` select the previous item
36. `control n` select the next item
37. `control y` confirm, don't forget this one, it's important cause without this u will kinda hate lsp
38. `control<leader>` complete, this one too, imp


39. `gd` lsp buffer definition
40. `K` Hower
41. `vws` workspace symbols
42. `<leader>vd` diagnostic open float
43. `[d` diagnostic goto next
44. `]d` diagnostic goto prev
45. `<leader>vca` buffer code action
46. `<leader>vrr` buffer references
47. `<leader>vrn` buffer rename
48. `control h` signature help




49. `control v` then highlight the area/block u want to comment `shift i` to go into insert mode at the very start of the line
    `//` and then press esc or control [
50. `vi"` and it will select everything withing double quotes or `vi(`, the best part is it will jump the curser before the string
51. `"+y` to copy into clipboard from vim editor
    `"` says to use a register, `+` specifies the register to use (where + means the system clipboard in this case)m `y` is the yank operation
52. `"+p` and `"+P` paste into vim from system clipboard



there r a lot more such shortcuts, but these r what coming to my mind will definitely update this list in future


Subdirectories include:

### Neovim

Check the `nvim` folder for configuration. For more instructions, see the README there.

Ignore the vim folder, it's out-of-date.
