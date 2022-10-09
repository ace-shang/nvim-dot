local packer = require("packer")
packer.startup({
    function(use)
        use("wbthomason/packer.nvim")
        use("folke/tokyonight.nvim")
        use("mhartington/oceanic-next")
        use("shaunsingh/nord.nvim")
        use("ful1e5/onedark.nvim")
        use("EdenEast/nightfox.nvim")
        use("arkav/lualine-lsp-progress")
        use("glepnir/dashboard-nvim")
        use("ahmedkhalf/project.nvim")
        use("neovim/nvim-lspconfig")
        use("hrsh7th/nvim-cmp")
        use("hrsh7th/vim-vsnip")
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        use("rafamadriz/friendly-snippets")
        use("onsails/lspkind-nvim")
        use("lukas-reineke/indent-blankline.nvim")
        use("tami5/lspsaga.nvim" )
        use("windwp/nvim-autopairs")
        use("numToStr/Comment.nvim")
        use("cossonleo/neo-smooth-scroll.nvim")

        use({
            'stevearc/aerial.nvim',
            config = function() require('aerial').setup() end
        })
        use({
            "williamboman/nvim-lsp-installer",
            commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0"
        })
        use({
            "kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-web-devicons"
        })
        use({
            "ellisonleao/gruvbox.nvim",
            requires = "rktjmp/lush.nvim"
        })
        use({
            "akinsho/bufferline.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons",
                "moll/vim-bbye"
            }
        })
        use({
            "nvim-lualine/lualine.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons"
            }
        })
        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                "nvim-lua/plenary.nvim"
            }
        }
        use({
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        })
    end,
    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require("packer.util").float({border = "single"})
            end
        }
    },
})

pcall(
    vim.cmd,
    [[
        augroup packer_use_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)

