local ls = require("luasnip")
local s = ls.snippet
local t = ls.text
local i = ls.insert_node

ls.add_snippets("cpp", {

    -- cppmain
    s("cppmain", {
        t({
            "#include <bits/stdc++.h>",
            "using namespace std;",
            "",
            "int main() {",
            "    ios::sync_with_stdio(false);",
            "    cin.tie(nullptr);",
            "",
            "    ",
        }),
        i(1),
        t({
            "",
            "",
            "    return 0;",
            "}",
        }),
    }),

    -- fori
    s("fori", {
        t("for (int i = 0; i < "),
        i(1, "n"),
        t("; i++) {"),
        t({
            "",
            "    ",
        }),
        i(2),
        t({
            "",
            "}",
        }),
    }),

    -- vector
    s("vec", {
        t("vector<"),
        i(1, "int"),
        t("> "),
        i(2, "v"),
        t(";"),
    }),

    -- sort
    s("sort", {
        t("sort("),
        i(1, "v.begin(), v.end()"),
        t(");"),
    }),

    -- cout
    s("cout", {
        t("cout << "),
        i(1),
        t(" << endl;"),
    }),

    -- cin
    s("cin", {
        t("cin >> "),
        i(1),
        t(";"),
    }),

    -- if
    s("if", {
        t("if ("),
        i(1),
        t({ ") {", "    " }),
        i(2),
        t({ "", "}" }),
    }),

})
