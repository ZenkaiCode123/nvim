return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function()
            local ls = require("luasnip")

            -- Load VS Code style snippets
            require("luasnip.loaders.from_vscode").lazy_load()

            -- Load your personal snippets
            require("luasnip.loaders.from_lua").lazy_load({
                paths = vim.fn.stdpath("config") .. "/snippets",
            })

            -- Jump through snippet fields
            vim.keymap.set({ "i", "s" }, "<Tab>", function()
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                else
                    return "<Tab>"
                end
            end, { expr = true, silent = true })

            vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
                if ls.jumpable(-1) then
                    ls.jump(-1)
                else
                    return "<S-Tab>"
                end
            end, { expr = true, silent = true })

            -- Optional: exit snippet
            vim.keymap.set({ "i", "s" }, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, { silent = true })
        end,
    },
}
