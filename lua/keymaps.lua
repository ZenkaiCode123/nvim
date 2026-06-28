vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>ex", ":exit<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>t", ":terminal<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>p", "<C-^>", { desc = "Previous file" })
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR><Esc>")

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")

vim.keymap.set("n", "<leader>ff", function()
  pcall(function()
    require("telescope.builtin").find_files()
  end)
end)
vim.keymap.set("n", "<F2>", function()
  vim.o.paste = not vim.o.paste
  print("paste mode: " .. tostring(vim.o.paste))
end)
vim.keymap.set("n", "<leader>fg", function()
  pcall(function()
    require("telescope.builtin").live_grep()
  end)
end)
vim.keymap.set("n", "<leader>h", function()
  vim.cmd("Alpha")
end, { desc = "Dashboard Home" })

-- Open file explorer (Oil)
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open Oil file explorer" })
vim.keymap.set("n", "<leader>e", function()
  vim.cmd("topleft 30vsplit")
  require("oil").open(vim.fn.expand("%:p:h"))
end, { desc = "Oil Explorer" })
---gcc
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")
  vim.cmd("!gcc % -o %< && ./%<")
end, { desc = "Compile and Run C" })


vim.keymap.set("n", "<leader>sn", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.expand("~/notes")
  })
end, { desc = "Search Notes" })
--- focos mode
vim.keymap.set("n", "<leader>z", function()
  require("core.focus").toggle()
end, { desc = "Toggle Focus Mode" })

vim.keymap.set("n", "<leader>ss", function()
  require("core.session").save()
end, { desc = "Save session" })

vim.keymap.set("n", "<leader>sl", function()
  require("core.session").load()
end)

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>D", function()
  local file = vim.fn.expand("%:p")

  local choice = vim.fn.confirm(
    "Delete file?\n" .. file,
    "&Yes\n&No",
    2
  )

  if choice == 1 then
    vim.fn.delete(file)
    vim.cmd("bd!")
  end
end, { desc = "Delete current file" })

vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied path")
end)

vim.keymap.set("n", "<leader>cf", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  print("Filename copied")
end)

vim.keymap.set("n", "<leader>cd", function()
  vim.fn.setreg("+", vim.fn.expand("%:p:h"))
  print("Directory copied")
end)

vim.keymap.set("n", "<leader>cr", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
  print("Relative path copied")
end)

vim.keymap.set("n", "<leader>cpr", function()
  vim.cmd("w")
  vim.cmd("!g++ % -o main && ./main")
end)

vim.keymap.set("n", "<leader>P", function()
  vim.cmd("w")
  vim.cmd("split | terminal python3 %")
end)
--- Tamplets Keymap for md
vim.keymap.set("n", "<leader>td", function()
    vim.cmd("0r ~/notes/Templates/dsa.md")
end, { desc = "Insert DSA template" })

vim.keymap.set("n", "<leader>tl", function()
    vim.cmd("0r ~/notes/Templates/linux.md")
end, { desc = "Insert Linux template" })

vim.keymap.set("n", "<leader>tn", function()
    vim.cmd("0r ~/notes/Templates/networking.md")
end, { desc = "Insert Networking template" })

vim.keymap.set("n", "<leader>ta", function()
    vim.cmd("0r ~/notes/Templates/ai.md")
end, { desc = "Insert AI template" })
---
-- url
vim.keymap.set("n", "gx", function()
  vim.ui.open(vim.fn.expand("<cfile>"))
end) 
--
vim.keymap.set("n", "<leader>fc", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.stdpath("config"),
  })
end)
vim.keymap.set("n", "]h", "<cmd>Gitsigns next_hunk<CR>")
vim.keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<CR>")

vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>")

vim.keymap.set("n", "<leader>td", function()
  local buf = vim.fn.bufadd("~/notes/todo.md")
  vim.fn.bufload(buf)

  local width = math.floor(vim.o.columns * 0.7)
  local height = math.floor(vim.o.lines * 0.7)

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = (vim.o.lines - height) / 2,
    col = (vim.o.columns - width) / 2,
    border = "rounded",
  })
end, { desc = "Floating Todo" })
