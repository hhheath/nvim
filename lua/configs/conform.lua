local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        json = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
    formatters = {
        -- black is mean so we need to prepend with --fast
        black = {
            prepend_args = { "--fast" },
        },
        prettier = {
            append_args = { "--tab-width", "4" },
        },
    },
}

return options
