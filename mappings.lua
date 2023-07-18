local M = {}

M.abc = {
  n = {
    [";"] = { ":", "enter cmdlin", opts = {nowait = true}},
    ---------- True Zen ----------
    ["<leader>za"] = { ":TZNarrow<CR>", "Zen Ataraxis" },
    ["<leader>zm"] = { ":TZMinimalist<CR>", "Zen Minimalist" },
    ["<leader>zn"] = { ":TZNarrow<CR>", "Zen Narrow" },
    ["<leader>zf"] = { ":TZFocus<CR>", "Zen Focus" },
    ["<leader>zz"] = {
      function ()
        vim.cmd(":Lazy load true-zen.nvim")
        require("true-zen.ataraxis").off()
        require("true-zen.minimaist").off()
        require("true-zen.narrow").off()
        require("true-zen.focus").off()
      end
    }
  },
}
return M
