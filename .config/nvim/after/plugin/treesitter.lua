require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,

    autotag = {
        enable = true,
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},
        javascript = {'template_string'},
        java = false,
    }
})
