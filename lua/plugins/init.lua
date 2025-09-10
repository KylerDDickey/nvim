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
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "gopls",
        "js-debug-adapter",
        "prettier",
        "pyright",
        "typescript-language-server",
        "yapf",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("nvchad.configs.lspconfig")
      require("configs.lspconfig")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    lazy = false, -- https://github.com/nvim-treesitter/nvim-treesitter/discussions/5289
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "css",
        "go",
        "html",
        "javascript",
        "lua",
        "templ",
        "tsx",
        "typescript",
        "python",
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
