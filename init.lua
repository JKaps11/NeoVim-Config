-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.set_log_level("debug")
vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'
