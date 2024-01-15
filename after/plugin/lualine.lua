require('lualine').setup {
	options = {
    disabled_filetypes = {
      statusline = {'NvimTree', 'help'},
    },
    ignore_focus = {'NvimTree'},
    always_divide_middle = true,
  },
	sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
 }
