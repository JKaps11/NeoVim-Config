-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'
