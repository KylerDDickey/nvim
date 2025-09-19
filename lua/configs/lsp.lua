local lsps = {
  { "nixd" },
  { "gopls" },
  { "luals" },
  { "pyright" },
  {
    "templ",
    {
      default_config = {
        cmd = { "templ", "lsp" },
        filetypes = { "templ" },
        settings = {},
      },
    },
  },
  {
    "ts_ls",
    {
      init_options = {
        preferences = {
          disableSuggestions = true,
        },
      },
    },
  },
}

for _, lsp in pairs(lsps) do
  local name, config = lsp[1], lsp[2]
  vim.lsp.enable(name)

  if config then
    vim.lsp.config(name, config)
  end
end
