local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local keymap = vim.keymap.set

  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "gi", vim.lsp.buf.implementation, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
  callback = function()
    vim.lsp.start({
      name = "tsserver",
      cmd = { "typescript-language-server", "--stdio" },
      root_dir = vim.fs.dirname(vim.fs.find({ "package.json", "tsconfig.json", ".git" }, { upward = true })[1]),
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    vim.lsp.start({
      name = "gopls",
      cmd = { "gopls" },
      root_dir = vim.fs.dirname(vim.fs.find({ "go.mod", ".git" }, { upward = true })[1]),
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        gopls = {
          gofumpt = true,
          analyses = { unnusedparams = true },
          staticcheck = true,
          codelenses = { gc_details = true },
        }
      }
    })
    vim.api.nvim_buf_create_user_command(0, "GoFormat", function()
                vim.lsp.buf.format({ async = true })
            end, {})
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = 0,
                callback = function() vim.lsp.buf.format({ async = false }) end
            })
      end,
    })

    vim.api.nvim_create_autocmd("FileType", {
    pattern = { "vue" },
    callback = function()
      vim.lsp.start({
        name = "volar",
        cmd = { "vue-language-server", "--stdio" },
        root_dir = vim.fs.dirname(vim.fs.find({ "package.json", ".git" }, { upward = true })[1]),
        capabilities = capabilities,
        on_attach = on_attach,
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "css", "scss", "less" },
  callback = function()
    vim.lsp.start({
      name = "tailwindcss",
      cmd = { "tailwindcss-language-server", "--stdio" },
      root_dir = vim.fs.dirname(vim.fs.find({ "tailwind.config.js", "tailwind.config.cjs", ".git" }, { upward = true })[1]),
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
})
