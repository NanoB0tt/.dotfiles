local augroup = vim.api.nvim_create_augroup
NanoB0ttGroup = augroup('NanoB0tt', {})

require("NanoB0tt.packer")
require("NanoB0tt.set")
require("gitsigns").setup()

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
    group = NanoB0ttGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

--[[ autocmd({"BufWritePre"}, { ]]
--[[     group = NanoB0ttGroup, ]]
--[[     pattern = "*", ]]
--[[     callback = function() ]]
--[[         vim.lsp.buf.format() ]]
--[[     end, ]]
--[[ }) ]]

