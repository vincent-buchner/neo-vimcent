return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensured_installed = { "lua_ls", "dockerls", "gopls", "html", "eslint", "pylsp", "ltex" },
				automatic_installation = true,
				automatic_enable = true
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensured_installed = { "lua_ls", "dockerls", "gopls", "html", "eslint", "pylsp", "ltex" },
			automatic_installation = true,
			automatic_enable = true,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ltex.setup({
				settings = {
					ltex = {
						language = "en-US",
					},
				},
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
