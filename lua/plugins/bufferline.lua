return {
	"akinsho/nvim-bufferline.lua",
	requires = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				indicator = {
					style = "underline",
				},
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
						padding = 1,
					},
				},
			},
		})
		vim.keymap.set("n", "<A-n>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<A-b>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>", { noremap = true, silent = true })
	end,
}
