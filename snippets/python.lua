local ls = require("luasnip")
local s = ls.snippet
local t = ls.text
local i = ls.insert_node

ls.add_snippets("python", {

    s("main", {
        t({
            'if __name__ == "__main__":',
            "    ",
        }),
        i(1),
    }),

    s("def", {
        t("def "),
        i(1, "function_name"),
        t("("),
        i(2),
        t({ "):", "    " }),
        i(3),
    }),

    s("class", {
        t("class "),
        i(1, "ClassName"),
        t({ ":", "    " }),
        i(2),
    }),

    s("for", {
        t("for "),
        i(1, "item"),
        t(" in "),
        i(2, "items"),
        t({ ":", "    " }),
        i(3),
    }),

    s("print", {
        t("print("),
        i(1),
        t(")"),
    }),

})
