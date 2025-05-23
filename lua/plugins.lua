return {
    -- theme
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedark").setup {
                style = "darker",
            }
            -- Enable theme
            require("onedark").load()
        end,
    },

    -- lsp config
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig").defaults()
        end,
    },

    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        opts = require "configs.mason",
    },

    {
        "williamboman/mason-lspconfig.nvim",
        opts = require "configs.mason-lspconfig",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        cmd = "Telescope",
        opts = require "configs.telescope",
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        opts = function()
            return require "configs.treesitter"
        end,
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
            require("luasnip").config.set_config(opts)
            require "configs.luasnip"
        end,
    },

    -- {
    --     "hrsh7th/nvim-cmp",
    --     event = "InsertEnter",
    --     dependencies = {
    --         "saadparwaiz1/cmp_luasnip",
    --         "hrsh7th/cmp-nvim-lua",
    --         "hrsh7th/cmp-nvim-lsp",
    --         "hrsh7th/cmp-buffer",
    --         "hrsh7th/cmp-path",
    --     },
    --             config = function()
    --         return require "configs.cmp"
    --     end,
    -- },

    -- quality of life stuff :)
    {
        "stevearc/conform.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = require "configs.conform",
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = require "configs.lualine",
    },

    {
        "stevearc/oil.nvim",
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup {
                default_file_explorer = true,
                view_options = {
                    show_hidden = true,
                },
            }
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = require "configs.gitsigns",
    },

    -- {
    --     "windwp/nvim-autopairs",
    --     event = "InsertEnter",
    --     config = function()
    --         require("nvim-autopairs").setup {
    --             fast_wrap = {},
    --             disable_filetype = { "TelescopePrompt", "vim" },
    --         }
    --
    --         local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    --         require("cmp").event:on("conform_done", cmp_autopairs.on_confirm_done())
    --     end,
    -- },
}
