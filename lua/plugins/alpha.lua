return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, 
    config = function()
      vim.cmd([[
      highlight DashboardAscii guifg=#FF0B29
      ]])
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')
      local luffy_ascii = {
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
      }

    local ascii_section = {
    type = "text",
    val = luffy_ascii,
    opts = {
        position = "center",
        hl = "DashboardAscii",
    },
}
    
      -- Custom Buttons
      dashboard.section.buttons.val = {
        dashboard.button('e', '📄  New File', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '🔍  Find File', ':Telescope find_files<CR>'),
        dashboard.button('r', '🕒  Recent Files', ':Telescope oldfiles<CR>'),
        dashboard.button('q', '❌  Quit', ':qa<CR>'),
      }

      -- Footer
      dashboard.section.footer.val = '🚀 Happy Coding with Neovim 🚀'
      

    dashboard.config.layout = {
    { type = "padding", val = 5 }, -- Add some space at the top
    ascii_section,
    { type = "padding", val = 3 }, -- Add space between art and buttons
    dashboard.section.buttons,
}
      -- Apply the configuration
      alpha.setup(dashboard.config)
    end
  }
}

