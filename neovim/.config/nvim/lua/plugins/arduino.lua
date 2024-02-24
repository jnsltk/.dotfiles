return {
    {
        'stevearc/vim-arduino',
        cmd = {
			"ArduinoAttach",
			"ArduinoChooseBoard",
			"ArduinoChooseProgrammer",
			"ArduinoChoosePort",
			"ArduinoVerify",
			"ArduinoUpload",
			"ArduinoSerial",
			"ArduinoUploadAndSerial",
			"ArduinoInfo",
		},
        init = function ()
            vim.keymap.set("n", "<Leader>aa", "<CMD>ArduinoAttach<CR>", silent)
            vim.keymap.set("n", "<Leader>av", "<CMD>ArduinoVerify<CR>", silent)
            vim.keymap.set("n", "<Leader>au", "<CMD>ArduinoUpload<CR>", silent)
        end
    }
}
