local Remap = require("NanoB0tt.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.vnoremap
local nmap = Remap.nmap

-- Navigation menu
nnoremap("<leader>pv", ":Ex<CR>")

-- UndoTree
nnoremap("<leader>u", ":UndotreeShow<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
--nnoremap("n", "nzzzv")
--nnoremap("N", "Nzzzv")
--nnoremap("J", "mzJ`z")
xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")
