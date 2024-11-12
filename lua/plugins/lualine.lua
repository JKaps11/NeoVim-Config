return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
      'nvim-tree/nvim-web-devicons', -- Optional for icons
      'bluz71/vim-nightfly-colors'   -- Theme for Lualine
    },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'nightfly',
        },
        sections = {
          lualine_a = {
            {
              'filename',
              path = 1,
            }
          }
        }
      }
    end
  }
}

