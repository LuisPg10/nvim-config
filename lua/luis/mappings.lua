-- LEADER KEY
vim.g.mapleader = ' '

-- Save
vim.keymap.set({"n", "i"}, "<C-s>", "<cmd>write<cr>", {desc = "Save"})

-- Don't edit the clipboard
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Select all text
vim.keymap.set('n', '<leader>a', '<cmd>keepjumps normal! ggVG<CR>', {desc = "Select all text", silent = true})

-- Undo and redo
vim.keymap.set({"n", "i"}, "<C-Z>", "<cmd>undo<cr>", {desc = "Undo"})
vim.keymap.set({"n", "i"}, "<C-S-Z>", "<cmd>redo<cr>", {desc = "Redo"})

-- Open explorer
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {desc = "Open explorer", silent = true})
-- Focus explorer
vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeFocus<cr>", {desc = "Foucs explorer", silent = true})

-- Open Mason
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", {desc = "Open Mason", silent = true})

-- Format
function Format_code()
  local current_filetype = vim.bo.filetype

  if current_filetype == "dart" then
    vim.lsp.buf.format()
  else
    vim.cmd("Format")
  end
end
vim.keymap.set({"n", "i"}, "<C-S-I>", "<cmd>lua Format_code()<cr>", {desc = "Format", silent = true})

-- Actions for code
vim.keymap.set("n", "<C-.>", "<cmd>lua vim.lsp.buf.code_action()<cr>", {desc = "Actions", silent = true})

-- Close tab
vim.keymap.set("n", "<leader>w", "<cmd>bdelete<cr>", {desc = "Close tab", silent = true})

-- Exit to nvim
vim.keymap.set('n', '<leader>q', '<cmd>qall<cr>')
