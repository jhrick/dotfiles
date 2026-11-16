return function(p)
  local set = vim.api.nvim_set_hl

  -- Variables
  set(0, "@variable", {
    fg = p.text,
  })

  set(0, "@variable.builtin", {
    fg = p.peach,
    italic = true,
  })

  set(0, "@variable.parameter", {
    fg = p.rosewater,
    italic = true,
  })

  set(0, "@constant", {
    fg = p.peach,
  })

  set(0, "@constant.builtin", {
    fg = p.peach,
    italic = true,
  })

  -- Functions
  set(0, "@function", {
    fg = p.blue,
  })

  set(0, "@function.call", {
    fg = p.blue,
  })

  set(0, "@function.builtin", {
    fg = p.sky,
    italic = true,
  })

  set(0, "@method", {
    fg = p.blue,
  })

  set(0, "@constructor", {
    fg = p.yellow,
  })

  -- Keywords
  set(0, "@keyword", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "@keyword.function", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "@keyword.return", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "@conditional", {
    fg = p.mauve,
    italic = true,
  })

  set(0, "@repeat", {
    fg = p.mauve,
    italic = true,
  })

  -- Types
  set(0, "@type", {
    fg = p.yellow,
  })

  set(0, "@type.builtin", {
    fg = p.yellow,
    italic = true,
  })

  set(0, "@attribute", {
    fg = p.peach,
  })

  -- Literals
  set(0, "@string", {
    fg = p.green,
  })

  set(0, "@string.escape", {
    fg = p.pink,
  })

  set(0, "@number", {
    fg = p.peach,
  })

  set(0, "@boolean", {
    fg = p.peach,
  })

  -- Operators and punctuation
  set(0, "@operator", {
    fg = p.sky,
  })

  set(0, "@punctuation", {
    fg = p.subtext,
  })

  set(0, "@punctuation.bracket", {
    fg = p.subtext,
  })

  set(0, "@punctuation.delimiter", {
    fg = p.overlay0,
  })

  -- Comments
  set(0, "@comment", {
    fg = p.muted,
    italic = true,
  })

  set(0, "@comment.todo", {
    fg = p.bg,
    bg = p.yellow,
    bold = true,
  })

  -- Markup
  set(0, "@tag", {
    fg = p.mauve,
  })

  set(0, "@tag.attribute", {
    fg = p.yellow,
  })

  set(0, "@tag.delimiter", {
    fg = p.overlay0,
  })

  set(0, "@markup.heading", {
    fg = p.blue,
    bold = true,
  })

  set(0, "@markup.strong", {
    fg = p.text,
    bold = true,
  })

  set(0, "@markup.italic", {
    fg = p.text,
    italic = true,
  })

  set(0, "@markup.link", {
    fg = p.blue,
    underline = true,
  })
end
