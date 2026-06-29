return {
  {
<<<<<<< HEAD
    "saghen/blink.cmp",
    version = "1.*",

    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        preset = "default",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

<<<<<<<< HEAD:lua/plugins/lsp.lua
        vim.lsp.config("jsonls", {
          capabilities = capabilities,
        })
        vim.lsp.config("pyright", {
           capabilities = capabilities,
        })
       
      -- LSP servers
      vim.lsp.config("clangd", { capabilities = capabilities })
      vim.lsp.config("lua_ls", { capabilities = capabilities })
      vim.lsp.config("ts_ls", {
          capabilities = capabilities,
      })
=======
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- Web
      vim.lsp.config("html", {
        capabilities = capabilities,
      })

      vim.lsp.config("cssls", {
        capabilities = capabilities,
      })

      vim.lsp.config("jsonls", {
        capabilities = capabilities,
      })

      vim.lsp.config("pyright", {
        capabilities = capabilities,
      })

      -- Other LSPs
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })

      -- Enable servers
>>>>>>> d0c6f27 (msg fixed lsp and blink cmp)
      vim.lsp.enable({
        "clangd",
        "lua_ls",
        "pyright",
<<<<<<< HEAD

       -- Web
=======
>>>>>>> d0c6f27 (msg fixed lsp and blink cmp)
        "html",
        "cssls",
        "jsonls",
        "ts_ls",
<<<<<<< HEAD
       })

      -- keymaps
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gr", vim.lsp.buf.references)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
    end,
  }



========
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
>>>>>>>> d0c6f27 (msg fixed lsp and blink cmp):lua/plugins/cmp.lua
=======
      })

      -- Keymaps
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
      end, { desc = "Format File" })
    end,
  },
}
>>>>>>> d0c6f27 (msg fixed lsp and blink cmp)
