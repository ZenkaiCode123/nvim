-- return {
--   {
--     "stevearc/oil.nvim",
--     dependencies = { "nvim-tree/nvim-web-devicons" },
--     lazy = false,
--
--     config = function()
--       require("oil").setup({
--         default_file_explorer = true,
--         view_options = {
--           show_hidden = true,
--         },
--         float = {
--           padding = 2,
--           max_width = 80,
--           max_height = 30,
--           border = "rounded",
--         },
--       })
--     end,
--   },
-- }
--
-- ============================================================================
-- FILE: lua/plugins/oil.lua
-- Floating + Sidebar Oil.nvim
-- ============================================================================
--
-- return {
--   "stevearc/oil.nvim",
--
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--
--   opts = {
--     default_file_explorer = true,
--
--     view_options = {
--       show_hidden = true,
--     },
--
--     float = {
--       padding = 2,
--       max_width = 90,
--       max_height = 30,
--       border = "square",
--     },
--
--     keymaps = {
--       ["<CR>"] = "actions.select",
--       ["-"] = "actions.parent",
--       ["q"] = "actions.close",
--     },
--   },
--
--   keys = {
--     {
--       "<leader>e",
--       function()
--         require("oil").toggle_float()
--       end,
--       desc = "Oil Float",
--     },

--     {
--       "<leader>o",
--       "<cmd>Oil<CR>",
--       desc = "Oil Sidebar",
--     },
--
--     {
--       "-",
--       "<cmd>Oil<CR>",
--       desc = "Parent Directory",
--     },
--   },
-- }
--
return {
  "stevearc/oil.nvim",

  opts = {
    default_file_explorer = true,

    view_options = {
      show_hidden = true,
    },

    float = {
      padding = 2,
      max_width = 90,
      max_height = 40,
      border = "rounded",
    },

    keymaps = {
      ["q"] = "actions.close",
      ["<CR>"] = "actions.select",
      ["-"] = "actions.parent",
      ["<C-r>"] = "actions.refresh",
    },
  },

  keys = {
    { "-", "<CMD>Oil<CR>", desc = "Open Oil" },
  },
}
