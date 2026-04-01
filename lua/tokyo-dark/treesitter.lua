local M = {}

function M.set(palette)
  local hl = vim.api.nvim_set_hl

  -- Treesitter groups
  hl(0, "@variable", { link = "Identifier" })
  hl(0, "@constant", { link = "Constant" })
  hl(0, "@string", { link = "String" })
  hl(0, "@number", { link = "Number" })
  hl(0, "@boolean", { link = "Boolean" })

  hl(0, "@function", { link = "Function" })
  hl(0, "@method", { link = "Function" })
  hl(0, "@parameter", { fg = palette.orange2 })

  hl(0, "@keyword", { link = "Keyword" })
  hl(0, "@conditional", { link = "Conditional" })
  hl(0, "@repeat", { link = "Repeat" })
  hl(0, "@operator", { link = "Operator" })

  hl(0, "@type", { link = "Type" })
  hl(0, "@type.builtin", { link = "Type" })

  hl(0, "@property", { fg = palette.green1 })
  hl(0, "@field", { fg = palette.green1 })

  hl(0, "@comment", { link = "Comment" })

  hl(0, "@punctuation.delimiter", { link = "Delimiter" })
  hl(0, "@punctuation.bracket", { link = "Delimiter" })
  hl(0, "@punctuation.special", { link = "Special" })

  -- Additional groups from existing highlights.lua to maintain consistency
  hl(0, "@constructor", { link = "Type" })
  hl(0, "@tag", { link = "Tag" })
  hl(0, "@tag.delimiter", { fg = palette.magenta })
end

return M
