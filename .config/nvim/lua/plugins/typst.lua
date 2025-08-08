return {
	{

		"chomosuke/typst-preview.nvim",

		lazy = false, -- or ft = 'typst'

		version = "1.*",

		opts = {}, -- lazy.nvim will implicitly calls `setup {}`
	},

	vim.keymap.set("n", "<leader>p", ":TypstPreview<CR>", { buffer = 0 }),
}
