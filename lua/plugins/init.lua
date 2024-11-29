require("plugins.lazy-nvim")

require("lazy").setup({
    require "plugins.colorscheme",
    require "plugins.treesitter",
})

vim.cmd.colorscheme("tokyonight")
