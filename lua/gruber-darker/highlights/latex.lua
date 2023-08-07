local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")

---@type HighlightsProvider
local M = {
	highlights = {},
}

function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights.tex_cmd = Highlight.new("texMathCmd", { fg = c.wisteria })
M.highlights.tex_delim = Highlight.new("texDelim", { fg = c.quartz})
M.highlights.tex_url = Highlight.new("texUrlArg", { fg = c.niagara, underline = true })
M.highlights.tex_ref = Highlight.new("texRefArg", { fg = c.niagara, underline = true })

return M
