return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    dependencies = {
      "rafamadriz/friendly-snippets",
    },

  opts = {
      keymap = {
    preset = "enter",
  },
    completion = {
        menu = {
            border = "rounded",
    },
    documentation = {
      auto_show = true,
      window = {
        border = "rounded",
      },
    },
  },
      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },
    },
  },
}
