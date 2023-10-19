require('git-worktree').setup()
require('telescope').load_extension('git_worktree')

vim.keymap.set("n", "<Leader>pr", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)
vim.keymap.set("n", "<Leader>pe", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", silent)

