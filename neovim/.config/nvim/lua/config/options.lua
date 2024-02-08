vim.opt.nu = true;
vim.opt.relativenumber = true;
vim.wo.relativenumber = true

vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.expandtab = true;

vim.opt.smartindent = true;
-- disable continuation of comments
vim.opt.formatoptions:remove { "c", "r", "o" }

vim.opt.wrap = true;

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.spelllang = 'en_gb'
vim.opt.spell = true

--[[
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
]]--
