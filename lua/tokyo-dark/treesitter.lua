local M = {}

function M.set(palette)
  local hl = vim.api.nvim_set_hl

  -- Variables
  hl(0, "@variable", { link = "Identifier" })
  hl(0, "@variable.builtin", { fg = palette.red })
  hl(0, "@variable.parameter", { link = "@parameter" })
  hl(0, "@variable.member", { link = "@property" })

  -- Constants
  hl(0, "@constant", { link = "Constant" })
  hl(0, "@constant.builtin", { fg = palette.red })
  hl(0, "@constant.macro", { link = "Macro" })

  -- Parameters
  hl(0, "@parameter", { fg = palette.orange2 })

  -- Properties & Fields
  hl(0, "@property", { fg = palette.green1 })
  hl(0, "@field", { fg = palette.green1 })

  -- Functions
  hl(0, "@function", { link = "Function" })
  hl(0, "@function.builtin", { link = "Special" })
  hl(0, "@function.macro", { link = "Macro" })
  hl(0, "@method", { link = "Function" })
  hl(0, "@function.method", { link = "@method" })
  hl(0, "@constructor", { fg = palette.magenta })

  -- Keywords
  hl(0, "@keyword", { link = "Keyword" })
  hl(0, "@keyword.function", { link = "Keyword" })
  hl(0, "@keyword.return", { link = "Keyword" })
  hl(0, "@keyword.operator", { link = "Keyword" })

  -- Decorators
  hl(0, "@attribute", { fg = palette.blue1 })

  -- Types
  hl(0, "@type", { link = "Type" })
  hl(0, "@type.builtin", { link = "Type" })
  hl(0, "@type.definition", { link = "Type" })

  -- Punctuation
  hl(0, "@punctuation.delimiter", { link = "Delimiter" })
  hl(0, "@punctuation.bracket", { link = "Delimiter" })
  hl(0, "@punctuation.special", { link = "Special" })

  -- Comments
  hl(0, "@comment", { link = "Comment" })

  -- Tags
  hl(0, "@tag", { link = "Tag" })
  hl(0, "@tag.attribute", { link = "@property" })
  hl(0, "@tag.delimiter", { fg = palette.magenta })
end

return M
