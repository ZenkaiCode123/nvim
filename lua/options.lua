-- vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true
-- vim.opt.smartindent = true
-- vim.opt.termguicolors = true
-- vim.opt.cursorline = false
-- vim.opt.scrolloff = 6
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- vim.opt.signcolumn = "yes"
-- vim.opt.termguicolors = false
-- vim.opt.background = "dark"
-- vim.opt.fillchars = {
--   eob = " "
-- }
-- vim.opt.conceallevel = 2
-- vim.opt.concealcursor = "nc"
-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.termguicolors = true
vim.opt.cursorline = false
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Mouse
vim.opt.mouse = "a"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Undo
vim.opt.undofile = true

-- Performance
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
-- Better completion
vim.opt.completeopt = "menu,menuone,noselect"

-- Invisible characters

-- Keep a column for diagnostics/git signs
vim.opt.signcolumn = "yes"

-- Better command line
vim.opt.cmdheight = 1

-- Hide ~ on empty lines
vim.opt.fillchars = {
  eob = " "
}

-- Faster redraw
vim.opt.lazyredraw = true

-- Persistent folds
vim.opt.foldenable = true

-- Shorter messages
vim.opt.shortmess:append("c")

-- Better backspace
vim.opt.backspace = "indent,eol,start"

-- Keep cursor centered while scrolling
vim.opt.scrolloff = 10
