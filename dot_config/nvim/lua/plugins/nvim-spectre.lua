return {
	"nvim-pack/nvim-spectre",
	build = false,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("spectre").setup({
			vim.keymap.set("n", "<leader>sr", ":Spectre<CR>", { desc = "Open NVIM-SPECTRE interface" }),
		})
	end,
	-- note: if you are going to use lsp-kind (another plugin)
	-- replace the line below with the function from lsp-kind
}
