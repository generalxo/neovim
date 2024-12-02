local ls = require("luasnip")
local s = ls.snippet
--local t = ls.text_node
local i = ls.insert_node

local fmta = require("luasnip.extras.fmt").fmta

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
})
