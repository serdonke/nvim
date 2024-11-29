require("plugins.lazy-nvim")

require("lazy").setup({
    require "plugins.colorscheme",
    require "plugins.treesitter",
    require "plugins.statusline",
    require "plugins.misc",
    require "plugins.lsp",
})

vim.cmd.colorscheme("tokyonight")
