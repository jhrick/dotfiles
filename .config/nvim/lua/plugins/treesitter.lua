require'nvim-treesitter.configs'.setup {
    ensure_installed = { "go", "sql", "dockerfile", "make", "lua", "json" },
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = { enable = true },
}
