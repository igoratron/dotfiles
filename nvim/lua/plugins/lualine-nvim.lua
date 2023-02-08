return { 
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  opts = {
    options = {
      theme = 'ayu_light',
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
