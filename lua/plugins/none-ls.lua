return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
                null_ls.builtins.completion.spell,
				null_ls.builtins.completion.luasnip,
        		null_ls.builtins.formatting.black,
        		null_ls.builtins.formatting.isort,
        		null_ls.builtins.code_actions.gomodifytags,
        		null_ls.builtins.code_actions.impl,
        		null_ls.builtins.diagnostics.revive,
        		null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.gofmt,
        		null_ls.builtins.formatting.goimports
      		},
		})
	end,
}
