return require('packer').startup(function()
    use('wbthomason/packer.nvim')

    --Lua plugins
    use ('nvim-lua/plenary.nvim')

    -- Undotree
    use ('mbbill/undotree')

    -- Navigation
    use ('nvim-telescope/telescope.nvim')

    -- Git integration
    use {'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }
    use("lewis6991/gitsigns.nvim")

    -- Icons
    use("kyazdani42/nvim-web-devicons")

    -- Syntax
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("numToStr/Comment.nvim")
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    -- LSP plugins
    use("neovim/nvim-lspconfig")
    use("nvim-lua/lsp_extensions.nvim")

    -- Completion plugins
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("saadparwaiz1/cmp_luasnip")

    -- Snippets plugins
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")

    -- Pictograms for lsp completion items
    use("onsails/lspkind-nvim")

    -- Others
    use("nvim-lua/popup.nvim")

    --Theme and customization
    use ('folke/tokyonight.nvim')
    use {"nvim-lualine/lualine.nvim",
          requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

end)
