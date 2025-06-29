-- Oil Keymaps

vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="Open Parent Directory in Oil"})
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end,
  {desc="Open Diagnostics in floating window"})
