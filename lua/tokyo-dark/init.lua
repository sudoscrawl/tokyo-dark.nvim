local M = {}

M.config = {
  transparent = false,
  italic_comments = true,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyo-dark"

  require("tokyo-dark.highlights").setup(M.config)

  local palette = require("tokyo-dark.palette")
  require("tokyo-dark.treesitter").set(palette)
  require("tokyo-dark.lsp").set(palette)
end

return M
