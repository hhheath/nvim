-- TODO: consider adding formatters for python (black/ruff), rust (rustfmt), and markdown (prettier)
-- since those languages are in the treesitter ensure_installed list
return {
  formatters_by_ft = {
    lua = { "stylua" },
    json = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },

  formatters = {
    prettier = {
      append_args = { "--tab-width", "4" },
    },
  },
}

