return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"go",
				"html",
				"css",
			},
			sync_install = false,
			indent = { enable = true },
			highlight = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
					-- Pressing enter over a textobject now marks it. Enter expands it incrementally while backspace
					-- reverts it incrementally
				},
			},
		})
	end,
}
