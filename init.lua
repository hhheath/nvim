vim.g.mapleader = " "
require "configs.lazy"
require "mappings" -- personal mappings
require "options" -- personal options

-- TODO: mapleader is set here and again in configs/lazy.lua — consider removing the duplicate in lazy.lua

-- vim.g.markdown_folding = 1 -- this results in all the markdown headers being folded by default when markdown files are opened
