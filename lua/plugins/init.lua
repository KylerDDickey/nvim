local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require("configs.dap")
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require("configs.formatter")
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require("configs.lint")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      -- Kept for backwards compatibility, may not need in the future.
      require("nvchad.configs.lspconfig")

      -- New home for configuring LSPs. Consider moving since it is natively supported
      -- and is no longer a plugin
      require("configs.lsp")

      vim.lsp.config("luals")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false, -- https://github.com/nvim-treesitter/nvim-treesitter/discussions/5289
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "css",
        "gitattributes",
        "gitignore",
        "gleam",
        "go",
        "gomod",
        "gowork",
        "html",
        "javascript",
        "jq",
        "json",
        "json5",
        "lua",
        "make",
        "markdown",
        "nix",
        "rust",
        "templ",
        "toml",
        "tsx",
        "typescript",
        "python",
        "yaml",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    main = "nvim-tree/nvim-tree.lua",
    config = function ()
      require("nvchad.configs.nvimtree")
      require("configs.nvimtree")
    end
  },
}

return plugins
