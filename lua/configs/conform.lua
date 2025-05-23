local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        json = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = false,
    },
    formatters = {
        prettier = {
            append_args = { "--tab-width", "4" },
        },
    },
}

return options
