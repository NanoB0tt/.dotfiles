local Remap = require("NanoB0tt.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.vnoremap
local nmap = Remap.nmap

-- Navigation menu
nnoremap("<leader>pv", ":Ex<CR>")

-- UndoTree
nnoremap("<leader>u", ":UndotreeShow<CR>")

-- Move chunk of text
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Yank to the end of the line
nnoremap("Y", "yg$")

-- Void paste buffer
xnoremap("<leader>p", "\"_dP")

-- Copy to clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- Void delete buffer
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- Rename all ocurrences under cursor
nnoremap("<leader>r", ":%s/<c-r><c-w>/<c-r><c-w>/g<c-f>$F/i")

-- Move and center the screen
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("n", "nzz")

