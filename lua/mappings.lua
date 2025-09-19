r:equire "nvchad.mappings"

-- See `:help vim.keymap.set()`
local map = vim.keymap.set

-- Uncomment this if nvim-tree is not installed (netrw is configured to be
-- disabled if nvim-tree is installed).
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keymaps for better default experience
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- DAP keymap settings
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", {
  desc = "toggle breakpoint at the current line",
})
map("n", "<leader>dr", "<cmd> DapContinue <CR>", {
  desc = "run or continue the debugger",
})
