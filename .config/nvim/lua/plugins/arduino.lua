return {
    {
        'stevearc/vim-arduino',
        init = function ()
            vim.keymap.set("n", "<Leader>aa", "<CMD>ArduinoAttach<CR>", silent)
            vim.keymap.set("n", "<Leader>av", "<CMD>ArduinoVerify<CR>", silent)
            vim.keymap.set("n", "<Leader>au", "<CMD>ArduinoUpload<CR>", silent)
        end
    }
}
