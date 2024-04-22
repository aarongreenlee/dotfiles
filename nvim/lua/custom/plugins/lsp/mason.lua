return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"biome",
				"cssls",
				"tailwindcss",
				"gopls",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
			},
		})

		local mason_tool_installer = require("mason-tool-installer")

		mason_tool_installer.setup({
			ensure_installed = {
				"biome", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"lua-language-server",
				"vim-language-server",
				"gopls",
				"stylua",
				"shellcheck",
				"editorconfig-checker",
				"gofumpt",
				"golines",
				"gomodifytags",
				"gotests",
				"impl",
				"json-to-struct",
				"luacheck",
				"misspell",
				"revive",
				"shellcheck",
				"shfmt",
				"staticcheck",
				"vint",
			},

			auto_update = true,
			-- automatically install / update on startup. If set to false nothing
			-- will happen on startup. You can use :MasonToolsInstall or
			-- :MasonToolsUpdate to install tools and check for updates.
			-- Default: true
			run_on_start = true,
			-- Only attempt to install if 'debounce_hours' number of hours has
			-- elapsed since the last time Neovim was started. This stores a
			-- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
			-- This is only relevant when you are using 'run_on_start'. It has no
			-- effect when running manually via ':MasonToolsInstall' etc....
			-- Default: nil
			debounce_hours = 24,
		})
	end,
}
