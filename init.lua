require("do.core")
require("do.lazy")

local capabilities = require("blink.cmp").get_lsp_capabilities()

local servers = { "luals", "ruff", "tailwindcss", "ts_ls" }

for _, server in ipairs(servers) do
	vim.lsp.config(server, {
		capabilities = capabilities,
	})
	vim.lsp.enable(server)
end

vim.lsp.config("pyright", {
	capabilities = capabilities,
	settings = {
		python = {
			analysis = {
				diagnosticSeverityOverrides = {
					reportUnusedImport = "none",
					reportUnusedVariable = "none",
					reportUndefinedVariable = "none",
				},
			},
		},
	},
})
vim.lsp.enable("pyright")
