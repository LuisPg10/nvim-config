require("bufferline").setup({
	options = {
		mode = "buffer",
		hover = {
			enabled = true,
			delay = 10,
			reveal = { "close" },
		},
		separator_style = "slope",
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					local current_path = vim.fn.getcwd()
					local current_directory = vim.fn.fnamemodify(current_path, ":t")
					return current_directory
				end,
				text_align = "center",
				separator = true,
				highlight = true,
			},
		},
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
	},
})

-- Mappings tabs
for i = 1, 9, 1 do
	local tab = string.format("<M-%d>", i)
	local command = string.format("<cmd>BufferLineGoToBuffer %i<cr>", i)
	vim.keymap.set({ "n", "i" }, tab, command, { silent = true })
end

-- Move Circle
vim.keymap.set({ "n", "i" }, "<C-Tab>", "<cmd>BufferLineCycleNext<cr>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { silent = true })

-- Move next o previous tab
vim.keymap.set({ "n", "i" }, "<C-Right>", "<cmd>BufferLineMoveNext<cr>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-Left>", "<cmd>BufferLineMovePrev<cr>", { silent = true })

-- Close other tabs
vim.keymap.set("n", "<C-S-W>", "<cmd>BufferLineCloseOthers<cr>", { silent = true })
