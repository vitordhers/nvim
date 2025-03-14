vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- opens file explorer

-- move lines in view mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move j with cursor
vim.keymap.set("n", "J", "mzJ`z")

-- moves screen half page and centers
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search results
vim.keymap.set("n", "n", "nzzzv")                         -- next
vim.keymap.set("n", "N", "Nzzzv")                         -- prev
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>") -- restarts LSP


-- vim with me commands
--[[
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
]]                                         --

vim.keymap.set("x", "<leader>p", [["_dP]]) -- pastes from blackhole

-- yank to outside nvim
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- noop q
vim.keymap.set("n", "Q", "<nop>")

-- tmux
-- vim.keymap.set("n", "<C-n>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- format
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) format is set at none-ls

-- quickfix jump
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

--next item location list jump
--[[
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
]] --

-- replace all
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- adds chmod + x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source nvim
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
