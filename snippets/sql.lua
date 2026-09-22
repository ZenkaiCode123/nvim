local ls = require("luasnip")
local s = ls.snippet
local t = ls.text
local i = ls.insert_node

ls.add_snippets("sql", {

    s("select", {
        t("SELECT "),
        i(1, "*"),
        t({
            "",
            "FROM ",
        }),
        i(2, "table_name"),
        t(";"),
    }),

    s("insert", {
        t({
            "INSERT INTO ",
        }),
        i(1, "table_name"),
        t(" ("),
        i(2, "columns"),
        t({
            ")",
            "VALUES (",
        }),
        i(3, "values"),
        t(");"),
    }),

    s("create", {
        t({
            "CREATE TABLE ",
        }),
        i(1, "table_name"),
        t({
            " (",
            "    ",
        }),
        i(2, "id INT PRIMARY KEY"),
        t({
            "",
            ");",
        }),
    }),

    s("join", {
        t({
            "SELECT ",
        }),
        i(1, "*"),
        t({
            "",
            "FROM ",
        }),
        i(2, "table1"),
        t({
            "",
            "JOIN ",
        }),
        i(3, "table2"),
        t({
            " ON ",
        }),
        i(4, "table1.id = table2.id"),
        t(";"),
    }),

})
