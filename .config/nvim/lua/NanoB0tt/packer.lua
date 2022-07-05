return require('packer').startup(function()
    use('wbthomason/packer.nvim')

    --Lua plugins
    use ('nvim-lua/plenary.nvim')

    -- Other plugins
    use ('mbbill/undotree')
    use ('nvim-telescope/telescope.nvim')
    use {'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- LSP plugins
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("nvim-lua/lsp_extensions.nvim")
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    --Theme
    use ('folke/tokyonight.nvim')

    use ('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

end)
