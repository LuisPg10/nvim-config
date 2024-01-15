-- Aliases
vim.scriptencoding = "utf-8"
local o = vim.opt
local g = vim.g

-- Options
o.clipboard = "unnamedplus"
o.backup = false
o.writebackup = false
o.swapfile = false
o.showmode = false
o.number = true
o.relativenumber = true
o.mouse = "a"
o.wrap = true
o.breakindent = true
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = false
o.cursorline = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
o.termguicolors = true
o.mousemoveevent = true

-- always show diagnostic message
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})
-- Theme
vim.cmd.colorscheme("catppuccin")
