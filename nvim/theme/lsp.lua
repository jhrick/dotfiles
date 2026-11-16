return function(p)
  local set = vim.api.nvim_set_hl

  -- Diagnostics
  set(0, "DiagnosticError", {
    fg = p.red,
  })

  set(0, "DiagnosticWarn", {
    fg = p.yellow,
  })

  set(0, "DiagnosticInfo", {
    fg = p.sky,
  })

  set(0, "DiagnosticHint", {
    fg = p.teal,
  })

  -- Diagnostic underlines
  set(0, "DiagnosticUnderlineError", {
    undercurl = true,
    sp = p.red,
  })

  set(0, "DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = p.yellow,
  })

  set(0, "DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = p.sky,
  })

  set(0, "DiagnosticUnderlineHint", {
    undercurl = true,
    sp = p.teal,
  })

  -- Virtual text
  set(0, "DiagnosticVirtualTextError", {
    fg = p.red,
    bg = p.bg_alt,
  })

  set(0, "DiagnosticVirtualTextWarn", {
    fg = p.yellow,
    bg = p.bg_alt,
  })

  set(0, "DiagnosticVirtualTextInfo", {
    fg = p.sky,
    bg = p.bg_alt,
  })

  set(0, "DiagnosticVirtualTextHint", {
    fg = p.teal,
    bg = p.bg_alt,
  })

  -- LSP references
  set(0, "LspReferenceText", {
    bg = p.surface,
  })

  set(0, "LspReferenceRead", {
    bg = p.surface,
  })

  set(0, "LspReferenceWrite", {
    bg = p.surface,
    bold = true,
  })

  -- Inlay hints
  set(0, "LspInlayHint", {
    fg = p.muted,
    bg = p.bg_alt,
    italic = true,
  })
end
