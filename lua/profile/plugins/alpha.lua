return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {    
      "██████╗░██╗░░░██╗████████╗███████╗    ███╗░░░███╗░█████╗░██████╗░███████╗",
      "██╔══██╗╚██╗░██╔╝╚══██╔══╝██╔════╝    ████╗░████║██╔══██╗██╔══██╗██╔════╝",
      "██████╦╝░╚████╔╝░░░░██║░░░█████╗░░    ██╔████╔██║██║░░██║██║░░██║█████╗░░",
      "██╔══██╗░░╚██╔╝░░░░░██║░░░██╔══╝░░    ██║╚██╔╝██║██║░░██║██║░░██║██╔══╝░░",
      "██████╦╝░░░██║░░░░░░██║░░░███████╗    ██║░╚═╝░██║╚█████╔╝██████╔╝███████╗",
      "╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝    ╚═╝░░░░░╚═╝░╚════╝░╚═════╝░╚══════╝",
    }

    dashboard.section.buttons.val = {
      dashboard.button("M-e", "🗃️  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC sr", "♻️   > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("f", "📂  > File search","<cmd>Telescope find_files<cr>"),
      dashboard.button("q", "💔  > Quit NVIM", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
