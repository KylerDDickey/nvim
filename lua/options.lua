require "nvchad.options"

-- See `:help vim.o`

-- Relative line numbers.
vim.wo.relativenumber = true
vim.wo.nu = true

-- 4 spaces > 2 spaces > tabs, fight me.
-- Also "smart" indenting is better than whatever else vim tries to do.
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.breakindent = true

-- More of a pop/indie guy myself.
-- In all seriousness, though, text wrapping is confusing.
vim.o.wrap = false

-- Make sure that the cursor stays n lines from the top/bottom when scrolling
-- through the file.
vim.o.scrolloff = 12

-- Enable signcolumn to ensure plugins that use it to display information
-- (i.e., a debugger's breakpoint) are able to present that information.
vim.wo.signcolumn = "yes"

-- Sync clipboard between OS and Neovim.
-- See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Add the '@' character to the set of characters that may be used in file
-- names.
vim.opt.isfname:append "@-@"

-- Better search highlighting and case-insensitive searching UNLESS \C or
-- capital in search.
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable mouse mode.
vim.o.mouse = "a"

-- Set completeopt to have a better completion experience.
vim.o.completeopt = "menuone,noselect"

-- Update timing (in ms). If things go awry, increase this value (default is
-- 4000).
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Show me where columns 80, 100, and 120 are.
-- vim.o.colorcolumn = "80"

-- Enable syntax highlighting and other terminal color things.
-- NOTE: You should make sure your terminal supports this.
vim.o.termguicolors = true

-- Settings to apply if NeoVim is loaded from NeoVide.
if vim.g.neovide then
  -- Neovide sizing bug: https://github.com/neovide/neovide/issues/2248
  vim.g.neovide_remember_window_size = false
  vim.g.neovide_fullscreen = false

  -- Configure padding
  vim.g.neovide_padding_top = 15
  vim.g.neovide_padding_bottom = 15
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- Configure animations
  vim.g.neovide_cursor_animation_length = 0.05

  -- Font
  vim.o.guifont = "JetBrainsMono Nerd Font:h11"
end
