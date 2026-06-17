return {
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Highlights
      vim.api.nvim_set_hl(0, "AlphaHeader", {
        fg = "#7fbbb3",
        bold = true,
      })

      vim.api.nvim_set_hl(0, "AlphaButtons", {
        fg = "#d3c6aa",
      })

      vim.api.nvim_set_hl(0, "AlphaFooter", {
        fg = "#859289",
        italic = true,
      })

      -- Header
      dashboard.section.header.val = {
        "",
        "",
        "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██║   ██║██║████╗ ████║",
        "██╔██╗ ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",

        "",
      }
      -- dashboard.section.header.val = {
      --   "MMMMMMMMMMMMMMMMMMMM0;0,.:;XW0XWMMMMMMMM",
      --   "MMMMMMMMMMMMMMMMMMMMo'.   ..'ldkWMMMMMMM",
      --   "MMMMMMMMMMMMMMMMMMMMd.    .lkK0WMMMMMMMM",
      --   "MMMMMMMMMMMMx;...,cl;.   . .clKWMMMMMMMM",
      --   "MMMMMMMNMNd.         .Xl ,c'oWWKMMMMMMMM",
      --   "MMMMMMMXK..    .   .. odlKWK0MMMMMMMMMMM",
      --   "MMMMMWXW; . ..    .'   .cddOKNNMMMMMMMMM",
      --   "MMMMMMMNc;ldk..   .,;.  ..'kWMMMMMMMMMMM",
      --   "MMMMMMMMd:d:koKd' .,.,.   'ooXWMMMMMMMMM",
      --   "MMMNNNMMKdld0KNWkd..d.,    'NOWMMMMMMMMM",
      --   "MMKxKONMNOXOOXWNW0c.c       ,0MMWKNWMMMM",
      --   "MKcOkxxNNWWWNooxkk;..         ;NX0odO0MM",
      --   "MokkXKOoxMMMMMNc;xM;            oc;;ldOO",
      --   "MOXKxKoKdNMMMMMMMMx              l,.;:dN",
      --   "M0NNWKk0kWMMMMMMNl                .;xkWW",
      --   "M0oXWWOdXMMMMK0xk.                 cKlNK",
      --   "MMOkMXMKNMMMk:x,'                  cdk00",
      --   "MMXONMMW0MMMooo.                   .oOOX",
      --   "MMOKNMWWo..o;..                    .xOWN",
      --   "MN.c0MN0'                          ,XXWW",
      --   "MN. 'N0.                           oWMMM",
      --   "MM.  c                             ONWMM",  
      -- }
      --
      dashboard.section.header.opts.position = "center"
      dashboard.section.header.opts.hl = "AlphaHeader"

      -- Buttons
      dashboard.section.buttons.val = {
        dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Live Grep", ":Telescope live_grep<CR>"),
        dashboard.button("l", "  Lazy", ":Lazy<CR>"),
        dashboard.button("q", "󰗼  Quit", ":qa<CR>"),
      }

      dashboard.section.buttons.opts.position = "center"
      dashboard.section.buttons.opts.hl = "AlphaButtons"

      -- Quotes
      local quotes = {
        "Talk is cheap. Show me the code.",
        "Discipline > motivation.",
        "Less, but better.",
        "Stay hungry. Stay foolish.",
        "Consistency beats intensity.",
        "Read. Practice. Build. Repeat.",
        "First solve the problem. Then write the code.",
        "Small progress is still progress.",
        "Make it work. Make it right. Make it fast.",
      }

      math.randomseed(os.time())
      dashboard.section.footer.val =
        quotes[math.random(#quotes)]

      dashboard.section.footer.opts.position = "center"
      dashboard.section.footer.opts.hl = "AlphaFooter"

      -- Layout
      local height = vim.fn.winheight(0)

      dashboard.config.layout = {
        {
          type = "padding",
          val = math.max(2, math.floor(height * 0.15)),
        },

        dashboard.section.header,

        {
          type = "padding",
          val = 2,
        },

        dashboard.section.buttons,

        {
          type = "padding",
          val = 2,
        },

        dashboard.section.footer,
      }

      dashboard.config.opts.noautocmd = true

      alpha.setup(dashboard.config)
    end,
  },
}
