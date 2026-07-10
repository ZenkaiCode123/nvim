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
    -- after vim.cmd.colorscheme("gruvbox")

    vim.api.nvim_set_hl(0, "FloatBorder", {
      fg = "#83a598",
      bg = "NONE",
    })

    vim.api.nvim_set_hl(0, "NormalFloat", {
      bg = "#282828",
    })
  end,
}
--
-- require('vague').setup({
--   transparent = false, -- If true, background is not set
--   bold = true, -- Disable bold globally
--   italic = true, -- Disable italic globally
--   on_highlights = function(hl, colors) end,
--   colors = {
--     bg = '#141415',
--     inactiveBg = '#1c1c24',
--     fg = '#cdcdcd',
--     floatBorder = '#878787',
--     line = '#252530',
--     comment = '#606079',
--     builtin = '#b4d4cf',
--     func = '#c48282',
--     string = '#e8b589',
--     number = '#e0a363',
--     property = '#c3c3d5',
--     constant = '#aeaed1',
--     parameter = '#bb9dbd',
--     visual = '#333738',
--     error = '#d8647e',
--     warning = '#f3be7c',
--     hint = '#7e98e8',
--     operator = '#90a0b5',
--     keyword = '#6e94b2',
--     type = '#9bb4bc',
--     search = '#405065',
--     plus = '#7fa563',
--     delta = '#f3be7c',
--   },
-- })
