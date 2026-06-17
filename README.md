# Neovim Configuration

This is my personal Neovim configuration written in Lua.
It is designed to be minimal, fast, and modular using `lazy.nvim`.

This setup is shared under the **MIT License**, meaning anyone can reuse, modify, and distribute it with proper credit.

---

## ✨ Features

* Lua-based Neovim config
* Fast plugin loading using `lazy.nvim`
* Reproducible setup using `lazy-lock.json`
* Modular structure (clean separation of plugins and core settings)
* LSP support and autocompletion
* Telescope fuzzy finder
* Treesitter syntax highlighting
* Git integration (gitsigns)
* Clean and minimal UI setup

---

## 📁 Structure

```text
.
├── init.lua
├── lazy-lock.json
└── lua
    ├── config
    │   └── lazy.lua
    ├── keymaps.lua
    ├── options.lua
    └── plugins
        ├── autopairs.lua
        ├── autotag.lua
        ├── cmp.lua
        ├── colors.lua
        ├── comment.lua
        ├── cursur.lua
        ├── dashboard.lua
        ├── gitsign.lua
        ├── indent.lua
        ├── lualine.lua
        ├── obsidian.lua
        ├── oil.lua
        ├── render-markdown.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── url.lua
        └── whichkey.lua
```

---

## 🚀 Installation

### 1. Backup existing config (optional)

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### 2. Clone the repository

```bash
git clone https://github.com/ZenkaiCode123/nvim.git ~/.config/nvim
```

### 3. Start Neovim

```bash
nvim
```

Lazy.nvim will automatically install all plugins.

---

## 📦 Plugin Manager

This config uses:

* [`lazy.nvim`](https://github.com/folke/lazy.nvim)

The `lazy-lock.json` file ensures all plugin versions stay consistent across machines.

---

## 🧠 Philosophy

* Keep it minimal and fast
* Avoid unnecessary plugins
* Prefer Lua over Vimscript
* Maintain reproducibility
* Focus on developer productivity

---

## ⚖️ License

This project is licensed under the **MIT License**.

You are free to:

* Use
* Modify
* Share
* Distribute

As long as you include the original copyright notice.

See the `LICENSE` file for full details.

---

## 🙏 Credits

This configuration is built from scratch with inspiration from various Neovim communities and plugin authors.
