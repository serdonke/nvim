-- Setup Lazy and install plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"neanias/everforest-nvim",
		config = function()
			vim.cmd.colorscheme("everforest")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function() 
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "rust" },

				auto_install = true,

				highlight = { 
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
})

