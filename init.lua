vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
-- Persistent undo
vim.opt.undofile = true

-- Auto save
vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and vim.fn.expand("%") ~= "" then
      vim.cmd("silent write")
    end
  end,
})
vim.opt.rtp:prepend(lazypath)

require("options")
require("keymaps")

require("lazy").setup("plugins")
