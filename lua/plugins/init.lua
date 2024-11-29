require("plugins.lazy-nvim")

require("lazy").setup({
    require "plugins.colorscheme",
    require "plugins.treesitter",
    require "plugins.statusline",
})

vim.cmd.colorscheme("tokyonight")
