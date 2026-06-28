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
  }



