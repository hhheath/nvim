return {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
      },
      width = 0.87,
      height = 0.80,
    },
    mappings = {
      -- n = { ["q"] = require("telescope.actions").close },
    },
  },

  -- TODO: "themes" and "terms" extensions are referenced but not installed — either install them or remove this
  -- TODO: consider adding telescope-fzf-native for significantly faster fuzzy finding
  extensions_list = { "themes", "terms" },
  extensions = {},
}
