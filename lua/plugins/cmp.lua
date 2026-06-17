return {
  -- =========================
  -- LSP (IDE features)
  -- =========================
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      print("Welcome Back  stark ! ...(jarvis)")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
       
      -- LSP servers
      vim.lsp.config("clangd", { capabilities = capabilities })
      vim.lsp.config("lua_ls", { capabilities = capabilities })
      vim.lsp.config("ts_ls", {
          capabilities = capabilities,
      })
      vim.lsp.enable({
        "clangd",
        "lua_ls",
        "pyright",

       -- Web
        "html",
        "cssls",
        "jsonls",
        "ts_ls",
       })

      -- keymaps
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gr", vim.lsp.buf.references)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
    end,
  },

  -- =========================
  -- Completion (nvim-cmp)
  -- =========================
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },

    config = function()
      local cmp = require("cmp")

      cmp.setup({
        window = {
          completion = cmp.config.window.bordered({
            max_height = 10,
            max_width = 50,
          }),
          documentation = cmp.config.window.bordered({
            max_height = 15,
            max_width = 60,
          }),
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),

        sources = {
          { name = "nvim_lsp", max_item_count = 10 },
          { name = "buffer", max_item_count = 5 },
          { name = "path" },
        },
      })
    end,
  },
}
