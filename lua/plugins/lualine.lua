return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    options = {
      theme = "gruvbox",
      component_separators = "",
      section_separators = "",
      globalstatus = true,
    },

    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_c = { { "filename", path = 1 } },

      lualine_x = {
        "diagnostics",
        "encoding",
        "filetype",
      },

      lualine_y = {{
      function()
        local words = vim.fn.wordcount().words
        local lines = vim.api.nvim_buf_line_count(0)
        return string.format("󰈭 %d   %d", words, lines)
        end,
      }},
      lualine_z = { "location" },
    },
  },
}
