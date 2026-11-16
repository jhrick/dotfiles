local M = {}

local root = vim.fn.stdpath("config") .. "/theme"

local function load_module(name)
  return dofile(root .. "/" .. name .. ".lua")
end

function M.setup()
  local palette = load_module("palette")

  -- Reset previous highlights
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "mountain-mocha"

  -- Apply highlight modules
  load_module("highlights")(palette)
  load_module("treesitter")(palette)
  load_module("lsp")(palette)
  load_module("integrations")(palette)
end

return M
