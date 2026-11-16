-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local palette = {
  bg = "#0F0F0F",
  fg = "#C6C6C6",
  muted = "#858585",
  comment = "#454545",
  string = "#B6A88C",
  number = "#C1A17A",
}

local function apply_colors()
  local highlights = {
    Normal = { fg = palette.fg, bg = palette.bg },
    NormalNC = { fg = palette.fg, bg = palette.bg },

    LineNr = { fg = palette.comment, bg = palette.bg },
    CursorLineNr = { fg = palette.muted, bg = palette.bg },

    Comment = { fg = palette.comment, italic = false },

    String = { fg = palette.string },
    Character = { fg = palette.string },

    Number = { fg = palette.number },
    Boolean = { fg = palette.number },
    Float = { fg = palette.number },

    Function = { fg = palette.fg },
    Identifier = { fg = palette.fg },
    Keyword = { fg = palette.fg },
    Statement = { fg = palette.fg },
    Type = { fg = palette.fg },
    Operator = { fg = palette.fg },

    Constant = { fg = palette.number },
    Special = { fg = palette.muted },

    SignColumn = { bg = palette.bg },
    EndOfBuffer = { fg = palette.bg, bg = palette.bg },
  }

  for group, colors in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = apply_colors,
})

apply_colors()
