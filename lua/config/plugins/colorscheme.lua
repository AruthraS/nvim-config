local tokyonight_plugin = "folke/tokyonight.nvim"
local tokyonight_config = function()
  local transparent = true

  local bg = "#011628"
  local bg_dark = "#011423"
  local bg_highlight = "#143652"
  local bg_search = "#0A64AC"
  local bg_visual = "#275378"
  local fg = "#CBE0F0"
  local fg_dark = "#B4D0E9"
  local fg_gutter = "#627E97"
  local border = "#547998"

  require("tokyonight").setup({
    style = "night",
    transparent = transparent,
    styles = {
      sidebars = transparent and "transparent" or "dark",
      floats = transparent and "transparent" or "dark",
    },
    on_colors = function(colors)
      colors.bg = bg
      colors.bg_dark = transparent and colors.none or bg_dark
      colors.bg_float = transparent and colors.none or bg_dark
      colors.bg_highlight = bg_highlight
      colors.bg_popup = bg_dark
      colors.bg_search = bg_search
      colors.bg_sidebar = transparent and colors.none or bg_dark
      colors.bg_statusline = transparent and colors.none or bg_dark
      colors.bg_visual = bg_visual
      colors.border = border
      colors.fg = fg
      colors.fg_dark = fg_dark
      colors.fg_float = fg
      colors.fg_gutter = fg_gutter
      colors.fg_sidebar = fg_dark
    end,
  })

  vim.cmd("colorscheme tokyonight")
end

local flow_plugin = "0xstepit/flow.nvim"
local flow_config = function()
  local opts = {
    theme = {
      style = "dark",
      contrast = "default",
      transparent = true,
    },
    colors = {
      mode = "default", -- "default" | "dark" | "light"
      fluo = "pink", -- "pink" | "cyan" | "yellow" | "orange" | "green"
      custom = {
        saturation = "", -- "" | string representing an integer between 0 and 100
        light = "", -- "" | string representing an integer between 0 and 100
      },
    },
    ui = {
      borders = "inverse", -- "theme" | "inverse" | "fluo" | "none"
      aggressive_spell = false, -- true | false
    },
  }
  require("flow").setup(opts)
  vim.cmd("colorscheme flow")
end

local plugin = flow_plugin
local config = flow_config
return {
  plugin,
  priority = 1000,
  config = config,
}
