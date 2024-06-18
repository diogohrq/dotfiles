return {
	"numToStr/Comment.nvim",
	name = "comment",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("Comment").setup()
	end,
}
