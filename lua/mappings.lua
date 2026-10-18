require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- floaterm
vim.keymap.set({ "n", "t" }, "<leader>tt", "<cmd>FloatermToggle<CR>", { desc = "Toggle floating terminal" })

-- gitsigns
map("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle inline git blame" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
