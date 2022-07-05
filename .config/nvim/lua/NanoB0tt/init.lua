local augroup = vim.api.nvim_create_augroup
NanoB0ttGroup = augroup('NanoB0tt', {})

require("NanoB0tt.packer")
require("NanoB0tt.set")

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlighYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    group = NanoB0ttGroup,
    pattern = "*.rs",
    callback = function()
        require("lsp_extensions").inlay_hints{}
    end
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
