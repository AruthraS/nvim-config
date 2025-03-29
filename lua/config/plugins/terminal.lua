return {
  "rebelot/terminal.nvim",
  config = function()
    local terminal = require("terminal")
    terminal.setup()
    local keymap = vim.keymap
    local term_map = require("terminal.mappings")

    keymap.set(
      { "n", "x" },
      "<leader>ts",
      term_map.operator_send,
      { expr = true, desc = "Send selection/line to terminal" }
    )
    keymap.set("n", "<leader>to", term_map.toggle, { desc = "Toggle terminal" })
    keymap.set("n", "<leader>tO", term_map.toggle({ open_cmd = "enew" }), { desc = "Toggle terminal in new buffer" })
    keymap.set("n", "<leader>tr", term_map.run, { desc = "Run command in terminal" })
    keymap.set(
      "n",
      "<leader>tR",
      term_map.run(nil, { layout = { open_cmd = "enew" } }),
      { desc = "Run command in new buffer terminal" }
    )
    keymap.set("n", "<leader>tk", term_map.kill, { desc = "Kill active terminal session" })
    keymap.set("n", "<leader>t]", term_map.cycle_next, { desc = "Cycle to next terminal session" })
    keymap.set("n", "<leader>t[", term_map.cycle_prev, { desc = "Cycle to previous terminal session" })
    keymap.set(
      "n",
      "<leader>tl",
      term_map.move({ open_cmd = "belowright vnew" }),
      { desc = "Move terminal to vertical split (right)" }
    )
    keymap.set(
      "n",
      "<leader>tL",
      term_map.move({ open_cmd = "botright vnew" }),
      { desc = "Move terminal to bottom-right vertical split" }
    )
    keymap.set(
      "n",
      "<leader>th",
      term_map.move({ open_cmd = "belowright new" }),
      { desc = "Move terminal to horizontal split (bottom)" }
    )
    keymap.set(
      "n",
      "<leader>tH",
      term_map.move({ open_cmd = "botright new" }),
      { desc = "Move terminal to bottom-most horizontal split" }
    )
    keymap.set("n", "<leader>tf", term_map.move({ open_cmd = "float" }), { desc = "Move terminal to floating window" })
  end,
}
