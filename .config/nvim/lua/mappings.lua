require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<M-a>", ":Nvdash<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
