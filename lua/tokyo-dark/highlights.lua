local M = {}

function M.setup(config)
  local cp = require("tokyo-dark.palette")

  local hl = {
    -- Base Groups
    Normal = { fg = cp.fg, bg = not config.transparent and cp.bg or "NONE" },
    NormalFloat = { fg = cp.fg, bg = cp.bg },
    Comment = { fg = cp.comment, italic = config.italic_comments },
    Constant = { fg = cp.orange },
    String = { fg = cp.green1 },
    Character = { fg = cp.green },
    Number = { fg = cp.orange },
    Boolean = { fg = cp.orange },
    Float = { fg = cp.orange },

    Identifier = { fg = cp.fg },
    Function = { fg = cp.blue },

    Statement = { fg = cp.magenta },
    Conditional = { fg = cp.magenta },
    Repeat = { fg = cp.magenta },
    Label = { fg = cp.magenta },
    Operator = { fg = cp.blue5 },
    Keyword = { fg = cp.magenta },
    Exception = { fg = cp.magenta },

    PreProc = { fg = cp.cyan },
    Include = { fg = cp.cyan },
    Define = { fg = cp.magenta },
    Macro = { fg = cp.magenta },
    PreCondit = { fg = cp.cyan },

    Type = { fg = cp.blue2 },
    StorageClass = { fg = cp.blue2 },
    Structure = { fg = cp.blue2 },
    Typedef = { fg = cp.blue2 },

    Special = { fg = cp.blue1 },
    SpecialChar = { fg = cp.blue1 },
    Tag = { fg = cp.red },
    Delimiter = { fg = cp.blue5 },
    SpecialComment = { fg = cp.comment },
    Debug = { fg = cp.orange },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = cp.red1 },
    Todo = { fg = cp.yellow, bg = cp.bg },

    -- UI Groups
    Cursor = { fg = cp.ui.fg_cursor, bg = cp.ui.bg_cursor },
    CursorLine = { bg = cp.ui.bg_highlight },
    CursorColumn = { bg = cp.ui.bg_highlight },
    LineNr = { fg = cp.fg_gutter },
    CursorLineNr = { fg = cp.ui.fg_linenr_active },
    Visual = { bg = cp.ui.bg_visual },
    Search = { fg = cp.fg, bg = cp.ui.bg_search },
    IncSearch = { fg = cp.bg, bg = cp.orange },
    StatusLine = { fg = cp.fg_dark, bg = cp.ui.bg_statusline },
    StatusLineNC = { fg = cp.fg_dark, bg = cp.ui.bg_statusline },
    VertSplit = { fg = cp.ui.border },
    WinSeparator = { fg = cp.ui.border },
    Pmenu = { fg = cp.fg, bg = cp.ui.bg_menu },
    PmenuSel = { bg = cp.ui.bg_menu_sel },
    PmenuSbar = { bg = cp.ui.bg_menu },
    PmenuThumb = { bg = cp.blue0 },

    -- Diagnostics
    DiagnosticError = { fg = cp.diag.error },
    DiagnosticWarn = { fg = cp.diag.warn },
    DiagnosticInfo = { fg = cp.diag.info },
    DiagnosticHint = { fg = cp.diag.hint },
    DiagnosticUnderlineError = { undercurl = true, sp = cp.diag.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = cp.diag.warn },
    DiagnosticUnderlineInfo = { undercurl = true, sp = cp.diag.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = cp.diag.hint },

    -- Treesitter
    ["@variable"] = { fg = cp.fg },
    ["@function"] = { fg = cp.blue },
    ["@keyword"] = { fg = cp.magenta },
    ["@string"] = { fg = cp.green1 },
    ["@type"] = { fg = cp.blue2 },
    ["@constant"] = { fg = cp.orange },
    ["@parameter"] = { fg = cp.fg },
    ["@field"] = { fg = cp.green1 },
    ["@property"] = { fg = cp.green1 },
    ["@constructor"] = { fg = cp.blue2 },
    ["@operator"] = { fg = cp.blue5 },
    ["@tag"] = { fg = cp.red },
    ["@tag.delimiter"] = { fg = cp.magenta },

    -- LSP
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
  }

  for group, opts in pairs(hl) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
