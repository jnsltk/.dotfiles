function ToHex()
    vim.api.nvim_command("%!xxd")
end

function FromHex()
    vim.api.nvim_command("%!xxd -r")
end
