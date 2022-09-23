vim.g.nanoB0tt_colorscheme = "tokyonight"

function BackgroundSettings()
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.cmd("colorscheme " .. vim.g.nanoB0tt_colorscheme)

    vim.api.nvim_set_hl(0, "SignColumn", {
        bg = "none",
    })

    vim.api.nvim_set_hl(0, "CursorLineNR", {
        bg = "none",
    })

    vim.api.nvim_set_hl(0, "Normal", {
        bg = "none",
    })


    vim.api.nvim_set_hl(0, "LineNr", {
        bg = "none",
    })



end
BackgroundSettings()
