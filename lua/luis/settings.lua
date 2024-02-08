-- Aliases
vim.scriptencoding = "utf-8"
local opt = vim.opt
local g = vim.g

-- Options
opt.clipboard = "unnamedplus"
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.showmode = false
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.wrap = true
opt.breakindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
opt.cursorline = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true
opt.mousemoveevent = true

--Folding configure
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- always show diagnostic message
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})
