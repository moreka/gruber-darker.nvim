local M = {}

---@class HighlightsProvider
---@field highlights table<string, Highlight>
---@field setup fun() Set highlights

---@type HighlightsProvider[]
local providers = {
	require("gruber-darker.highlights.colorscheme"),
	require("gruber-darker.highlights.lsp"),
	require("gruber-darker.highlights.vim"),
	require("gruber-darker.highlights.terminal"),
	require("gruber-darker.highlights.treesitter"),
	require("gruber-darker.highlights.cmp"),
	require("gruber-darker.highlights.telescope"),
	require("gruber-darker.highlights.latex"),
}

---Set highlights for configured providers
function M.setup()
	for _, provider in ipairs(providers) do
		provider:setup()
	end
end

return M
