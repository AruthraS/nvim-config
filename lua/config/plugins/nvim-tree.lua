return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")
    local keymap = vim.keymap
    local api = require("nvim-tree.api")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },

      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "😌",
              arrow_open = "🫣",
            },
          },
        },
      },

      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { "^.git$" },
      },
      git = {
        ignore = false,
      },
      keymap.set("n", "vs", api.node.open.vertical, { desc = "Open: Vertical split" }),
      keymap.set("n", "hs", api.node.open.horizontal, { desc = "Open: Horizontal split" }),
    })
  end,
}
