vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt
vim.o.conceallevel = 2

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.autoread = true
opt.linebreak = true

vim.g.blamer_enabled = true
vim.g.blamer_delay = 300
vim.g.blamer_show_in_visual_modes = 0
vim.g.blamer_show_in_insert_modes = 0

