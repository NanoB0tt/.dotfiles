local Remap = require("NanoB0tt.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local luasnip = require("luasnip")


-- Setup nvim-cmp
local cmp = require("cmp")
local source_mapping = {
    buffer = "[Buffer]",
    luasnip = "[Snippet]",
    nvim_lsp = "[LSP]",
    path = "[Path]",
}
local lspkind = require("lspkind")

local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<C-u>"] = cmp.mapping.scroll_docs(-4),
            ["<C-d>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            --Tabs selection
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expandable() then
                    luasnip.expand()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else

                 fallback()
                end
            end, {
                "i",
                "s",
            }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, {
                "i",
                "s",
            }),
    }),

    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            local menu = source_mapping[entry.source.name]
            vim_item.menu = menu
            return vim_item
        end,
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    },
})

-- Pair completion
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end)
            nnoremap("K", function() vim.lsp.buf.hover() end)
            nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
            nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
            nnoremap("[d", function() vim.diagnostic.goto_next() end)
            nnoremap("]d", function() vim.diagnostic.goto_prev() end)
            nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
            nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
            nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
            inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
        end,
    }, _config or {})
end

-- Luasnip
require("luasnip.loaders.from_vscode").lazy_load({})

-- language servers
require'lspconfig'.cssls.setup{
    capabilities = capabilities,
}
require'lspconfig'.html.setup{
    capabilities = capabilities,
}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}


