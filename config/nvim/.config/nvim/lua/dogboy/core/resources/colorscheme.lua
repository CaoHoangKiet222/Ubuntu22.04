return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },

  {
    "catppuccin/nvim",
    lazy = true,
  },
  {
    "dracula/vim",
    lazy = false,
  },
  { "ellisonleao/gruvbox.nvim", lazy = false },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local monokai = require("monokai-pro")
      monokai.setup({
        transparent_background = false,
        italic_comments = true,
        filter = "spectrum",       -- classic | octagon | pro | machine | ristretto | spectrum
        inc_search = "background", -- underline | background
        background_clear = { "telescope" },
        diagnostic = {
          background = true,
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
            bold = false,
          },
          indent_blankline = {
            context_highlight = "pro", -- default | pro
          },
        },
        override = function(c)
          return {
            ColorColumn = { bg = c.base.dimmed3 },
            DashboardRecent = { fg = c.base.magenta },
            DashboardProject = { fg = c.base.blue },
            DashboardConfiguration = { fg = c.base.white },
            DashboardSession = { fg = c.base.green },
            DashboardLazy = { fg = c.base.cyan },
            DashboardServer = { fg = c.base.yellow },
            DashboardQuit = { fg = c.base.red },
          }
        end,
      })
      -- monokai.load()
    end,
  },
}
