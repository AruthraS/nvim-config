return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.google_java_format,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports_reviser,
      },
    })

    vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
  end,
}
