local M = {}

M.Custom = {
  n = {
    [";"] = { ":", "enter cmdlin", opts = { nowait = true } },
    ---------- TrueZen ----------
    ["<leader>za"] = { ":TZNarrow<CR>", "Zen Ataraxis" },
    ["<leader>zm"] = { ":TZMinimalist<CR>", "Zen Minimalist" },
    ["<leader>zn"] = { ":TZNarrow<CR>", "Zen Narrow" },
    ["<leader>zf"] = { ":TZFocus<CR>", "Zen Focus" },
    ["<leader>zz"] = {
      function()
        vim.cmd ":Lazy load true-zen.nvim"
        require("true-zen.ataraxis").off()
        require("true-zen.minimaist").off()
        require("true-zen.narrow").off()
        require("true-zen.focus").off()
      end,
      "Turn off all true-zen modes",
    },
  },
  ["<leader>mm"] = {}
  ["<leader>md"] = {},
}

return M
