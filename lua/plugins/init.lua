require("plugins.lazy-nvim")

require("lazy").setup(
{
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
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", 
									 "python", "rust" },

				auto_install = true,

				highlight = { 
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
}
)

print("mphhh")
