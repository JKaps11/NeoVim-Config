return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup {}
      lspconfig.html.setup {}
      lspconfig.lua_ls.setup{}
      lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {
                check = {
                    command = "clippy"
                },
                diagnostics = {
                    enable = true;
                }
            }
        }
      }
      lspconfig.golangci_lint_ls.setup {}
      lspconfig.vimls.setup {}
    end,
  },
}
