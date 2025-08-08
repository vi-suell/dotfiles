--return {
--	{
--		"iamcco/markdown-preview.nvim",
--		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--		build = "cd app && npm install",
--		init = function()
--			vim.g.mkdp_filetypes = { "markdown" }
--		end,
--		ft = { "markdown" },
--	},
--}
return {
	{
		"brianhuster/live-preview.nvim",
		dependencies = {
			-- You can choose one of the following pickers
			"nvim-telescope/telescope.nvim",
		},
	},
}
