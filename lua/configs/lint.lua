local lint = require("lint")

lint.linters_bt_ft = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  javascriptreact = {'eslint'},
  typescriptreact = {'eslint'}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
