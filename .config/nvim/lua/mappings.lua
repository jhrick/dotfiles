require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<F3>", function ()
  print(os.date())
end)
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Terminal
map({ "n", "t" }, "<C-_>", function ()
  if vim.api.nvim_buf_get_option(0, 'buftype') == 'terminal' then
    vim.api.nvim_buf_delete(0, { force = true })
  else
    vim.cmd('terminal')
    vim.cmd('startinsert')
  end
end, opts)
