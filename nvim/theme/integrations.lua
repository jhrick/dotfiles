return function(p)
  local set = vim.api.nvim_set_hl

  -- Neo-tree
  set(0, "NeoTreeNormal", {
    fg = p.fg,
    bg = p.bg,
  })

  set(0, "NeoTreeNormalNC", {
    fg = p.fg,
    bg = p.bg,
  })

  set(0, "NeoTreeDirectoryIcon", {
    fg = p.blue,
  })

  set(0, "NeoTreeDirectoryName", {
    fg = p.fg,
  })

  set(0, "NeoTreeRootName", {
    fg = p.accent,
    bold = true,
  })

  set(0, "NeoTreeGitAdded", {
    fg = p.green,
  })

  set(0, "NeoTreeGitModified", {
    fg = p.yellow,
  })

  set(0, "NeoTreeGitDeleted", {
    fg = p.red,
  })

  set(0, "NeoTreeGitUntracked", {
    fg = p.teal,
  })

  -- Telescope
  set(0, "TelescopeNormal", {
    fg = p.fg,
    bg = p.bg_alt,
  })

  set(0, "TelescopeBorder", {
    fg = p.overlay,
    bg = p.bg_alt,
  })

  set(0, "TelescopeSelection", {
    fg = p.fg,
    bg = p.surface,
  })

  set(0, "TelescopeMatching", {
    fg = p.accent,
    bold = true,
  })

  -- nvim-cmp
  set(0, "CmpItemAbbr", {
    fg = p.fg,
  })

  set(0, "CmpItemAbbrMatch", {
    fg = p.blue,
    bold = true,
  })

  set(0, "CmpItemKind", {
    fg = p.mauve,
  })

  set(0, "CmpItemMenu", {
    fg = p.muted,
    italic = true,
  })

  -- Git signs
  set(0, "GitSignsAdd", {
    fg = p.green,
  })

  set(0, "GitSignsChange", {
    fg = p.yellow,
  })

  set(0, "GitSignsDelete", {
    fg = p.red,
  })
end
