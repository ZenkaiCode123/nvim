local ls = require("luasnip")
local s = ls.snippet
local t = ls.text
local i = ls.insert_node

ls.add_snippets("javascriptreact", {

    -- component
    s("rfc", {
        t("function "),
        i(1, "Component"),
        t({
            "() {",
            "    return (",
            "        <div>",
            "            ",
        }),
        i(2),
        t({
            "",
            "        </div>",
            "    );",
            "}",
            "",
            "export default ",
        }),
        i(3, "Component"),
        t(";"),
    }),

    -- useState
    s("ustate", {
        t("const ["),
        i(1, "value"),
        t(", set"),
        i(2, "Value"),
        t("] = useState("),
        i(3, "initialValue"),
        t(");"),
    }),

})
