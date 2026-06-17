return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "bash",
        "c",
        "cpp",
        "python",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.config").setup(opts)
    end,
  },
}
