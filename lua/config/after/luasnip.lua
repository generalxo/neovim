local ls = require("luasnip")
local s = ls.snippet
--local t = ls.text_node
local i = ls.insert_node

local fmta = require("luasnip.extras.fmt").fmta
local fmt = require("luasnip.extras.fmt").fmt

-- Csharp Snippets
-- Thank you who ever you are that was some greate insperation
-- https://github.com/atticus-sullivan/dot_nvim/blob/main/lua/luasnip_nettings/cpp.lua
ls.add_snippets("cs", {
	s("cw", fmta([[Console.WriteLine(<>);<>]], { i(1), i(0) })),
	--s("try", fmta([[try{<>}catch(Exeption e){}<>]], { i(1), i(0) })),
	s("try", fmta(
		"try" .. "\n" .. "{" .. "\n" .. "	" .. "<>" .. "\n" .. "}" .. "\n" .. "catch(Exception e)" .. "\n" .. "{" .. "\n" .. "	" .. "Console.WriteLine(e);" .. "\n" .. "}" .. "<>",
		{ i(1), i(0) }
	)),
	s("prop", fmta([[public <> <> { get; set; }<>]], { i(1), i(2), i(0) })),
	s("for", fmta("for(int <>; <>; <>)" .. "\n" .. "{" .. "\n" .. "<>" .. "\n" .. "}", 
		{ i(1), i(2), i(3), i(0)}
	)),
	s("if", fmta("if(<>)" .. "\n" .. "{" .. "\n" .. "<>" .. "\n" .. "}",
		{ i(1), i(0) }
	)),
})

ls.add_snippets("php", {
    s("!", fmt([[
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
	{}
</body>
</html>
]], {
        i(1),
    })),
	s("php", fmt([[
<?php
	{}
?>
]], {
		i(1),
	})),
})
