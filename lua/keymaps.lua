vim.g.mapleader = " "          -- Leertaste als Leader-Taste

local map = vim.keymap.set

-- Dateien speichern
map("n", "<leader>w", ":w<CR>", { desc = "Speichern" })
map("n", "<leader>q", ":q<CR>", { desc = "Schließen" })

-- Zwischen Splits wechseln (statt Ctrl+W dann h/j/k/l)
map("n", "<C-h>", "<C-w>h", { desc = "Split links" })
map("n", "<C-j>", "<C-w>j", { desc = "Split unten" })
map("n", "<C-k>", "<C-w>k", { desc = "Split oben" })
map("n", "<C-l>", "<C-w>l", { desc = "Split rechts" })

-- Einrücken in Visual Mode bleibt selektiert
map("v", "<", "<gv", { desc = "Einrücken links" })
map("v", ">", ">gv", { desc = "Einrücken rechts" })

-- Zeilen verschieben in Visual Mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Zeile runter" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Zeile hoch" })

-- Dateien switchen :e open_new
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")

-- Tab / Shift Tab for indentation in Visual
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Ctrl Click to enter function definition
vim.keymap.set("n", "<C-LeftMouse>", "<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Alt + Arrows to move line down / up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
