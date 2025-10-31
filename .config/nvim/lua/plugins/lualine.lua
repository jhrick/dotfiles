require("lualine").setup({
  options = {
    theme = "auto",
    icons_enabled = true,
    component_separators = { left = " ", right = " " },
    section_separators = { left = " ", right = " " },
    disabled_filetypes = { "neo-tree" },
  },
  sections = {
    lualine_a = {
      {
        "mode",
        fmt = function(str)
          return "▎" .. str
        end,
        color = { fg = "#89b4fa", bg = "none", gui = "bold" },
        padding = { left = 0, right = 1 },
      }
    },
    lualine_c = {
      { "filename", path = 0 },
    },
    lualine_x = { "encoding", "fileformat" },
    lualine_z = { "branch", "diff", "diagnostics" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_z = {},
  },
  extensions = { "neo-tree", "quickfix", "fugitive" },
})
