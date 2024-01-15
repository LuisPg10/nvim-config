local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "<leader>h", api.tree.toggle_hidden_filter, opts("Show hidden files"))

	-- deleted mappings
	vim.keymap.del("n", "<C-t>", { buffer = bufnr })
end

require("nvim-tree").setup({
	on_attach = my_on_attach,
	hijack_cursor = true,
	view = {
		side = "right",
		adaptive_size = true,
		number = true,
		relativenumber = true,
	},
	renderer = {
		root_folder_label = false,
		highlight_git = true,
		highlight_diagnostics = true,
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				folder_arrow = false
			}
		}
	},
	filters = {
		dotfiles = true,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	},
	diagnostics = {
		enable = true,
	},
})
