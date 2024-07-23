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
      lspconfig.tsserver.setup{
        capabilities = capabilities,
      }
      lspconfig.html.setup{
        capabilities = capabilities,
      }
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
              version = "LuaJIT",
              path = vim.split(package.path, ";"),
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { "vim" },
            },
            workspace = {
              -- Make the server aware of Neovim runtime files and plugins
              library = { vim.env.VIMRUNTIME },
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })

      lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {
                check = {
                    command = "clippy";
                },
                diagnostics = {

          
                    enable = true;
                }
            }
        }
      }
      lspconfig.golangci_lint_ls.setup{
        capabilities=capabilities,
      }
      lspconfig.vimls.setup{
        capabilities=capabilities,
      }
    end,
  },
}
