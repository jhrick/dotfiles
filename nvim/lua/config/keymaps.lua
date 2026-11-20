local map = vim.keymap.set

-- Telescope: Navigation
map("n", ";f", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

map("n", ";b", function()
  require("telescope.builtin").buffers()
end, { desc = "Find Buffers" })

-- Save
map("n", ";w", "<cmd>write<cr>", { desc = "Save File" })

-- Undo / Redo
map("n", ";u", "u", { desc = "Undo" })
map("n", ";U", "<C-r>", { desc = "Redo" })

-- Comment
map("n", ";c", "gcc", {
  remap = true,
  desc = "Comment Line",
})

map("x", ";c", "gc", {
  remap = true,
  desc = "Comment Selection",
})

-- Go to Definition
map("n", ";d", vim.lsp.buf.definition, {
  desc = "Go to Definition",
})

-- Rename Symbol
map("n", ";r", vim.lsp.buf.rename, {
  desc = "Rename Symbol",
})

-- Code Action
map({ "n", "x" }, ";a", vim.lsp.buf.code_action, {
  desc = "Code Action",
})

-- Line Diagnostics
map("n", ";e", vim.diagnostic.open_float, {
  desc = "Line Diagnostics",
})

-- Comma repeats the last f/F/t/T motion
map({ "n", "x" }, ",", ";", {
  desc = "Repeat f/t Motion",
})
