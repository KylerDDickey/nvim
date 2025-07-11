local config = require("nvchad.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.nixd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.templ.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  default_config = {
    cmd = { "templ", "lsp" },
    filetypes = { "templ" },
    root_dir = lspconfig.util.root_pattern("go.mod"),
    settings = {},
  }
}

lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}
