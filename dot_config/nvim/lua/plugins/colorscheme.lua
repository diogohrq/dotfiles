return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			commentStyle = { italic = true },
			keywordStyle = { bold = true },
			typeStyle = { italic = true, bold = true },
		})
		vim.cmd.colorscheme("kanagawa")
	end,
}
