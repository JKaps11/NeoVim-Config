return {
  {
    'xiyaowong/transparent.nvim',
    config = function()
      require("transparent").setup({
        enable = true, -- Start with transparency enabled
        extra_groups = { -- Additional groups for transparency
          "NormalFloat", -- Make floating windows transparent
          "NvimTreeNormal", -- Make NvimTree background transparent
        },
        exclude = { -- Groups to exclude from transparency
          "StatusLine",
          "TabLine",
        },
      })

      -- Keybinding to toggle transparency
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tt", -- Replace <leader>tt with your preferred key combination
        ":TransparentToggle<CR>",
        { noremap = true, silent = true }
      )
    end
  }
}

