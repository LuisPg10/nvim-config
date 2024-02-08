require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
		"c", "lua", "vim", "vimdoc",
		"query", "cpp", "javascript",
		"python", "typescript", "html",
		"css", "dart"
	},

  sync_install = false,

	auto_install = false,

  highlight = {
    enable = true,
		additional_vim_regex_highlighting = false,
  },

	autotag = {
		enable = true,
	},
}
