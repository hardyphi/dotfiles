local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

--[[
This currently uses prettierd over prettier as it comes
built-in, would require some work to replace if unable to
install prettier
]]

format_on_save.setup({
	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
	},
	formatter_by_ft = {
		-- javascript
		javascript = formatters.prettierd,
		typescript = formatters.prettierd,
		javascriptreact = formatters.prettierd,
		typescriptreact = formatters.prettierd,
		vue = formatters.prettierd,
		svelte = formatters.prettierd,

		-- markdown
		markdown = formatters.prettierd,
		html = formatters.prettierd,
		yaml = formatters.prettierd,

		-- css
		css = formatters.prettierd,
		scss = formatters.prettierd,
		less = formatters.prettierd,

		-- json
		json = formatters.prettierd,
		jsonc = formatters.prettierd,

		-- shell
		sh = formatters.shfmt,
		bash = formatters.shfmt,

		-- other
		java = formatters.lsp,
		python = formatters.black,
		rust = formatters.lsp,
		scad = formatters.lsp,
		terraform = formatters.lsp,

		-- Use a tempfile instead of stdin
		go = {
			formatters.shell({ cmd = { "gofmt" } }),
		},

		lua = {
			formatters.shell({ cmd = { "stylua", "--search-parent-directories", "--stdin-filepath", "%", "-" } }),
		},
	},

	-- Optional: fallback formatter to use when no formatters match the current filetype
	fallback_formatter = {
		formatters.remove_trailing_whitespace,
		formatters.remove_trailing_newlines,
		formatters.lsp,
	},
})

vim.keymap.set("n", "<leader>f", ":Format<CR>")
