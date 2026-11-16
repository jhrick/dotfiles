local opt = vim.opt

-- Interface
opt.termguicolors = true
opt.background = "dark"

opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

opt.signcolumn = "yes"
opt.foldcolumn = "0"

opt.showmode = false
opt.showtabline = 0
opt.laststatus = 2

opt.cursorline = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.fillchars = {
  eob = " ",
}
