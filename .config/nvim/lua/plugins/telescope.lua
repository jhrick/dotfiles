local ok, telescope = pcall(require, "telescope")
if not ok then
  vim.notify("Telescope not found")
  return
end

telescope.setup {
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    path_display = { "smart" },
    layout_config = {
      horizontal = { preview_width = 0.55 },
      vertical = { mirror = false },
    },
    file_ignore_patterns = { "node_modules", ".git" },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
