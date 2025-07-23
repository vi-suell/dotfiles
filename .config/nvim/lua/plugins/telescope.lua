return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "ivy",
					},
				},
				extensions = {
					fzf = {},
				},
			})

			require("telescope").load_extension("fzf")

			vim.keymap.set("n", "<space>t", require("telescope.builtin").help_tags)
			vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>d", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

			vim.keymap.set(
				"n",
				"<leader><leader>",
				require("telescope.builtin").buffers,
				{ desc = "[ ] Find existing buffers" }
			)

			vim.keymap.set("n", "<space>en", function()
				require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
			end)
			vim.keymap.set("n", "<space>ep", function()
				require("telescope.builtin").find_files({
					cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
				})
			end)
		end,
	},
}
