vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "J", "mzJ`z")


-- Copy to clipboard
vim.keymap.set("v",  "<leader>y", "\"+y")
vim.keymap.set("n",  "<leader>Y", "\"+yg_")
vim.keymap.set("n",  "<leader>y", "\"+y")
vim.keymap.set("n",  "<leader>yy", "\"+yy")

-- Paste from clipboard
-- vim.keymap.set("n", "<leader>p", "\"+p")
-- vim.keymap.set("n", "<leader>P", "\"+P")
-- vim.keymap.set("v", "<leader>p", "\"+p")
-- vim.keymap.set("v", "<leader>P", "\"+P")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete to void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
-- vim.keymap.set('n', '<leader>r', ':so %<CR>')

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end)
vim.keymap.set('n', '<leader>xx', '<cmd>:VimwikiToggleListItem<CR>')
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
