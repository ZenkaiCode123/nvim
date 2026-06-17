return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    opts = {
      ------------------------------------------------------------------
      -- WORKSPACES
      ------------------------------------------------------------------
      workspaces = {
        {
          name = "notes",
          path = "~/notes",
        },
      },

      ------------------------------------------------------------------
      -- COMPLETION
      ------------------------------------------------------------------
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },

      ------------------------------------------------------------------
      -- NOTE CREATION
      ------------------------------------------------------------------
      new_notes_location = "notes_subdir",

      notes_subdir = "inbox",

      note_id_func = function(title)
        if title ~= nil then
          return title
            :gsub(" ", "-")
            :gsub("[^A-Za-z0-9-]", "")
            :lower()
        end

        return tostring(os.time())
      end,

      note_frontmatter_func = function(note)
        return {}
      end,

      disable_frontmatter = true,

      ------------------------------------------------------------------
      -- LINKS
      ------------------------------------------------------------------
      preferred_link_style = "wiki",

      wiki_link_func = function(opts)
        return require("obsidian.util").wiki_link_id_prefix(opts)
      end,

      ------------------------------------------------------------------
      -- DAILY NOTES
      ------------------------------------------------------------------
      daily_notes = {
        folder = "daily",
        date_format = "%Y-%m-%d",
        alias_format = "%B %-d, %Y",

        template = "daily.md",
      },

      ------------------------------------------------------------------
      -- TEMPLATES
      ------------------------------------------------------------------
      templates = {
        folder = "Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },

      ------------------------------------------------------------------
      -- UI
      ------------------------------------------------------------------
      ui = {
        enable = false,

        checkboxes = {
          [" "] = {
            char = "󰄱",
          },
          ["x"] = {
            char = "",
          },
          [">"] = {
            char = "",
          },
          ["~"] = {
            char = "󰰱",
          },
        },

        bullets = {
          char = "•",
        },
      },

      ------------------------------------------------------------------
      -- ATTACHMENTS
      ------------------------------------------------------------------
      attachments = {
        img_folder = "assets/imgs",
      },
      
      ------------------------------------------------------------------
      -- OPEN NOTES IN SYSTEM APP
      ------------------------------------------------------------------
      open_app_foreground = false,

      ------------------------------------------------------------------
      -- FOLLOW LINKS
      ------------------------------------------------------------------
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = {
            noremap = false,
            expr = true,
            buffer = true,
          },
        },
      },
    },

    keys = {
      ----------------------------------------------------------------
      -- NOTES
      ----------------------------------------------------------------
      { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
      { "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick Switch" },
      { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search Notes" },

      ----------------------------------------------------------------
      -- DAILY
      ----------------------------------------------------------------
      { "<leader>od", "<cmd>ObsidianToday<CR>", desc = "Today's Note" },
      { "<leader>oy", "<cmd>ObsidianYesterday<CR>", desc = "Yesterday" },

      ----------------------------------------------------------------
      -- LINKS
      ----------------------------------------------------------------
      { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Link Note" },
      { "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow Link" },
      { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },

      ----------------------------------------------------------------
      -- TEMPLATES
      ----------------------------------------------------------------
      { "<leader>ot", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },

      ----------------------------------------------------------------
      -- TAGS
      ----------------------------------------------------------------
      { "<leader>otg", "<cmd>ObsidianTags<CR>", desc = "Tags" },

      ----------------------------------------------------------------
      -- RENAME
      ----------------------------------------------------------------
      { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },

      ----------------------------------------------------------------
      -- TOGGLE CHECKBOX
      ----------------------------------------------------------------
      { "<leader>ox", "<cmd>ObsidianToggleCheckbox<CR>", desc = "Toggle Checkbox" },
    },
  },
}

