return function(p)
  local set = vim.api.nvim_set_hl

  -- Editor
  set(0, "Normal", {
    fg = p.fg,
    bg = p.bg,
  })

  set(0, "NormalFloat", {
    fg = p.fg,
    bg = p.bg_alt,
  })

  set(0, "NormalNC", {
    fg = p.fg,
    bg = p.bg,
  })

  set(0, "EndOfBuffer", {
    fg = p.bg,
  })

  -- Cursor
  set(0, "Cursor", {
    fg = p.bg,
    bg = p.accent,
  })

  set(0, "CursorLine", {
    bg = p.bg_alt,
  })

  set(0, "CursorColumn", {
    bg = p.bg_alt,
  })

  set(0, "CursorLineNr", {
    fg = "#a0a0a0",
    bold = false,
  })

  -- Line numbers
  set(0, "LineNr", {
    fg = "#686868",
  })

  set(0, "SignColumn", {
    bg = p.bg,
  })

  -- Selection
  set(0, "Visual", {
    bg = p.surface,
  })

  set(0, "Search", {
    fg = p.bg,
    bg = p.yellow,
  })

  set(0, "IncSearch", {
    fg = p.bg,
    bg = p.peach,
  })

  -- Windows and borders
  set(0, "FloatBorder", {
    fg = p.overlay,
    bg = p.bg_alt,
  })

  set(0, "WinSeparator", {
    fg = p.surface,
  })

  set(0, "VertSplit", {
    fg = p.surface,
  })

  -- Status and tab lines
  set(0, "StatusLine", {
    fg = p.fg,
    bg = p.bg_alt,
  })

  set(0, "StatusLineNC", {
    fg = p.muted,
    bg = p.bg,
  })

  set(0, "TabLine", {
    fg = p.muted,
    bg = p.bg_alt,
  })

  set(0, "TabLineSel", {
    fg = p.fg,
    bg = p.surface,
    bold = true,
  })

  set(0, "TabLineFill", {
    bg = p.bg,
  })

  -- Popup menu
  set(0, "Pmenu", {
    fg = p.fg,
    bg = p.bg_alt,
  })

  set(0, "PmenuSel", {
    fg = p.fg,
    bg = p.surface,
    bold = true,
  })

  set(0, "PmenuSbar", {
    bg = p.surface,
  })

  set(0, "PmenuThumb", {
    bg = p.overlay,
  })

  -- Basic syntax
  set(0, "Comment", {
    fg = p.muted,
    italic = true,
  })

  set(0, "String", {
    fg = p.green,
  })

  set(0, "Character", {
    fg = p.green,
  })

  set(0, "Number", {
    fg = p.peach,
  })

  set(0, "Boolean", {
    fg = p.peach,
  })

  set(0, "Constant", {
    fg = p.peach,
  })

  set(0, "Function", {
    fg = p.blue,
  })

  set(0, "Identifier", {
    fg = p.text,
  })

  set(0, "Statement", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "Keyword", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "Operator", {
    fg = p.sky,
  })

  set(0, "Type", {
    fg = p.yellow,
  })

  set(0, "Special", {
    fg = p.teal,
  })

  set(0, "PreProc", {
    fg = p.mauve,
  })

  set(0, "Title", {
    fg = p.blue,
    bold = true,
  })

  set(0, "Directory", {
    fg = p.blue,
  })

  set(0, "MatchParen", {
    fg = p.peach,
    bg = p.surface,
    bold = true,
  })

  set(0, "NonText", {
    fg = p.surface,
  })

  set(0, "Whitespace", {
    fg = p.surface,
  })
end
