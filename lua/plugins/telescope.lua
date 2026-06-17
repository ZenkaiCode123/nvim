-- return {
--   {
--     "nvim-telescope/telescope.nvim",
--     cmd = "Telescope",
--     dependencies = { "nvim-lua/plenary.nvim" },
--
--     keys = {
--       { "<leader>ff", "<cmd>Telescope find_files<cr>" },
--       { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
--       { "<leader>fr", "<cmd>Telescope oldfiles<cr>" },
--     },
--     opts = {
--       pickers = {
--         find_files = {
--           find_command = {
--             "fdfind",
--             "--type", 
--             "f",
--           },
--         },
--       },
--     },
--   },
-- }
--
return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",

    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },

    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>" },
    },

    opts = {
      pickers = {
        find_files = {
          find_command = {
            "fdfind",
            "--type",
            "f",
          },
        },
      },

      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    },

    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
    end,
  },
}
