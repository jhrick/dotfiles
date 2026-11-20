return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax",
    },
  },

  {
    name = "bebop",
    dir = vim.fn.stdpath("config") .. "/theme",
    lazy = false,
    priority = 1000,

    config = function()
      local theme_path = vim.fn.stdpath("config") .. "/theme/init.lua"
      dofile(theme_path).setup()
    end,
  },
}
