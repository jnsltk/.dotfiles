local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    'ThePrimeagen/harpoon',

    'mbbill/undotree', 

    'tpope/vim-fugitive',

    'ThePrimeagen/vim-be-good',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },


{ 'kabouzeid/nvim-jellybeans', dependencies = 'rktjmp/lush.nvim' },

'moll/vim-bbye',

{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
},

'lewis6991/gitsigns.nvim',

'petertriho/nvim-scrollbar',

{
    'kevinhwang91/nvim-hlslens',
    config = function()
        require('hlslens').setup({
            build_position_cb = function(plist, _, _, _)
                require('scrollbar.handlers.search').handler.show(plist.start_pos)
            end,
        })

        vim.cmd([[
        augroup scrollbar_search_hide
        autocmd!
        autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
        augroup END
        ]])
    end,
},

{
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
        {'nvim-lua/plenary.nvim'},
        {'nvim-treesitter/nvim-treesitter'}
    }
},

{
    'vimwiki/vimwiki',
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt" },
    init = function()
        vim.g.vimwiki_folding = ""
        vim.g.vimwiki_list = {
            {
                path = '/home/jnsltk/Dropbox/vimwiki/',
                syntax = 'markdown',
                ext = '.md',
            }
        }
        vim.g.vimwiki_ext2syntax = {
            [".md"] = "markdown",
            [".markdown"] = "markdown",
            [".mdown"] = "markdown",
        }
    end
},

'plasticboy/vim-markdown',

'img-paste-devs/img-paste.vim',

'ThePrimeagen/git-worktree.nvim',

})
