return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    contrast = "hard",
    transparent_mode = true,

    overrides = {
      Normal       = { bg = "NONE" },
      NormalFloat  = { bg = "NONE" },
      SignColumn   = { bg = "NONE" },
      EndOfBuffer  = { bg = "NONE" },

      CursorLine   = { bg = "#282828" },

      LineNr       = { fg = "#665c54" },
      CursorLineNr = { fg = "#fabd2f", bold = true },

      FloatBorder  = { fg = "#83a598", bg = "NONE" },

      VertSplit    = { fg = "#504945" },
      WinSeparator = { fg = "#504945" },
    },
  },

  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd.colorscheme("gruvbox")
  end,
}
