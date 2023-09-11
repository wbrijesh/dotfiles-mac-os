require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nord',
    section_separators="",
    component_separators=""
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
