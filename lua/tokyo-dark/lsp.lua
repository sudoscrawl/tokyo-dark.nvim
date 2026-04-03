local M = {}

function M.set(palette)
	local hl = vim.api.nvim_set_hl

	hl(0, "@lsp.type.parameter", { link = "@parameter" })
	hl(0, "@lsp.type.property", { link = "@property" })
	hl(0, "@lsp.type.variable", { link = "@variable" })
	hl(0, "@lsp.type.function", { link = "@function" })
	hl(0, "@lsp.type.method", { link = "@method" })
	hl(0, "@lsp.type.macro", { link = "@function.macro" })
	hl(0, "@lsp.type.decorator", { link = "@attribute" })
	hl(0, "@lsp.type.type", { link = "@type" })
	hl(0, "@lsp.type.class", { link = "@type" })
	hl(0, "@lsp.type.enum", { link = "@type" })
	hl(0, "@lsp.type.interface", { link = "@type" })
	hl(0, "@lsp.type.struct", { link = "@type" })
end

return M
