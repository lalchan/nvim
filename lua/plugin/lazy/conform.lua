return {
	"stevearc/conform.nvim",
	event = "LspAttach",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		quiet = true,
		formatters_by_ft = {
			typescript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			javascript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
			scss = { { "prettierd", "prettier" } },
			markdown = { { "prettierd", "prettier" } },
			yaml = { { "prettierd", "prettier" } },
			lua = { "stylua" },
			sh = { "beautysh" },
			zsh = { "beautysh" },
		},
		format_on_save = function(bufnr)
			-- Disable autoformat for files in a certain path
			local bufname = vim.api.nvim_buf_get_name(bufnr)
			if bufname:match("/node_modules/") then
				return
			end
			local disable_filetypes = { c = true, cpp = true, env = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				async = true,
			}
		end,
		format_after_save = { lsp_fallback = true },
	},
	config = function(_, opts)
		local conform = require("conform")
		conform.setup(opts)

		-- Customize prettier args
		---@diagnostic disable-next-line: unused-local
		require("conform.formatters.prettier").args = function(self, ctx)
			local prettier_roots = { ".prettierrc", ".prettierrc.json", "prettier.config.js" }
			local args = { "--stdin-filepath", "$FILENAME" }

			local localPrettierConfig = vim.fs.find(prettier_roots, {
				upward = true,
				path = ctx.dirname,
				type = "file",
			})[1]

			if localPrettierConfig then
				vim.list_extend(args, { "--config", localPrettierConfig })
			end

			local hasTailwindPrettierPlugin = vim.fs.find("node_modules/prettier-plugin-tailwindcss", {
				upward = true,
				path = ctx.dirname,
				type = "directory",
			})[1]

			if hasTailwindPrettierPlugin then
				vim.list_extend(args, { "--plugin", "prettier-plugin-tailwindcss" })
			end

			return args
		end

		conform.formatters.beautysh = {
			prepend_args = function()
				return { "--indent-size", "2", "--force-function-style", "fnpar" }
			end,
		}
	end,
}
