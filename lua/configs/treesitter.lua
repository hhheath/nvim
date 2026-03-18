return {
    ensure_installed = {
        "lua",
        "c",
        "cpp",
        "cmake",
        "make",
        "python",
        "rust",
        "toml",
        "markdown",
        "markdown_inline",
        "json",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },

    -- TODO: consider adding incremental selection — very useful for expanding/shrinking selections by treesitter node
    -- incremental_selection = {
    --     enable = true,
    --     keymaps = {
    --         init_selection = "<C-space>",
    --         node_incremental = "<C-space>",
    --         scope_incremental = false,
    --         node_decremental = "<bs>",
    --     },
    -- },
}
