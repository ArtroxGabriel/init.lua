-- Gabrigas:
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>zig", "<cmd>lsp restart<CR>", { desc = "LSP Restart" })
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("i", "jk", "<Esc>")
