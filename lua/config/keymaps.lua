vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

--Neotree keymaps
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', {})

--format
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- terminal
vim.keymap.set("n", "<leader>tt", ":ToggleTerm", {})
