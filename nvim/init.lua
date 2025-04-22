require("lucas.core")
require("lucas.lazy")
require("colorscheme")

vim.cmd([[
  augroup terraform_ft
    autocmd!
    autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform
  augroup END
]])

vim.o.conceallevel = 2

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- vim.loader.enable() -- Neovim native lazy loader
-- vim.cmd("profile start nvim_profile.log")
-- vim.cmd("profile func *")
-- vim.cmd("profile file *")
