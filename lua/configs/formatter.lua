local M = {
  filetype = {
    astro = {
      require("formatter.filetypes.javascript").prettier
    },
    css = {
      require("formatter.filetypes.javascript").prettier
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier
    },
    python = {
      require("formatter.filetypes.python").yapf
    },
    nix = {
      require("formatter.filetypes.nix").nixfmt
    },
    go = {
      require("formatter.filetypes.go").gofmt
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
