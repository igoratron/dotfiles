return { 
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'auto',
      section_separators = '',
      component_separators = '',
    },
    sections = {
      lualine_a = {{'mode', format=function(mode) return mode:sub(1,1) end}},
      lualine_c = {{'filename', file_status = true, path = 1}},
      lualine_x = {'filetype'},
    },
  }
}
