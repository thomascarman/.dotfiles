require 'thomascarman.settings.plugins.tabline'

local tabline_ok, tabline = pcall(require, 'tabline')
if not tabline_ok then
    return
end

local lueline_ok, lueline = pcall(require, 'lueline')
if not lueline_ok then
    return
end

lueline.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {},
    lualine_b = {require('auto-session-library').current_session_name},
    lualine_c = {tabline.tabline_buffers},
    lualine_x = {tabline.tabline_tabs},
    lualine_y = {},
    lualine_z = {}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

