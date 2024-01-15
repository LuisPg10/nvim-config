-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,

	-- All formatter configurations are opt-in
	filetype = {
		-- Lua formatter
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		-- formatter for any filetype
		["*"] = {
			function()
				return {
					exe = "prettierd",
					args = {
						util.get_current_buffer_file_name(),
					},
					stdin = true,
				}
			end,
		},
	},
})
