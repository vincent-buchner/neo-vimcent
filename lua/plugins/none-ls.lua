return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    require("none-ls.diagnostics.eslint_d")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"), -- JavaScript (being difficult just because)
        null_ls.builtins.formatting.stylua, -- Lua
        null_ls.builtins.formatting.prettier, -- General
        null_ls.builtins.formatting.black, -- Python

        --GoLang
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
