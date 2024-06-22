local M = {
  filetype = {
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
    nix = {
      require("formatter.filetypes.nix").nixfmt
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
