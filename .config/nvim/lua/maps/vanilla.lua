-- ⠀⠀⠀⠀⠀⢀⣴⠚⠛⠉⠉⠉⠳⢦⡀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣴⣿⠁⠀⠀⠀⠀⠀⠀⠀⢹⡄⠀⠀⠀⠀
-- ⠀⠀⠀⣼⣟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀▗▄▄▖                          ▄   ▄  █                    ▗▖ ▄▄▖  ▄▄▖ 
-- ⠀⠀⢸⡟⠘⠉⠱⣿⠀⠀⠀⠀⢠⣶⡄⣿⠀⠀⠀⠀▐▛▀▜▖      ▐▌        ▐▌       █   █  ▀                    ▐▌▐▀▀█▖▐▀▀█▖
-- ⠀⠀⣿⠃⠀⠀⠀⠀⠀⠉⠙⠃⠀⠀⠀⢸⠀⠀⠀⠀▐▌ ▐▌ ▟█▙ ▐███  ▟██▖▐███  ▟█▙ ▜▖█▗▛ ██  ▐███▌ ▟██▖ █▟█▌ ▟█▟▌   ▐▌   ▟▌
-- ⠀⢸⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀▐██▛ ▐▛ ▜▌ ▐▌   ▘▄▟▌ ▐▌  ▐▛ ▜▌▐▌█▐▌  █    ▗▛  ▘▄▟▌ █▘  ▐▛ ▜▌  ▗▛  ▐██ 
-- ⠀⣾⣤⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀▐▌   ▐▌ ▐▌ ▐▌  ▗█▀▜▌ ▐▌  ▐▌ ▐▌▐█▀█▌  █   ▗▛  ▗█▀▜▌ █   ▐▌ ▐▌ ▗▛     ▜▌
-- ⠀⣿⣤⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀▐▌   ▝█▄█▘ ▐▙▄ ▐▙▄█▌ ▐▙▄ ▝█▄█▘▐█ █▌▗▄█▄▖▗█▄▄▖▐▙▄█▌ █   ▝█▄█▌▗█▄▄▖▐▄▄█▘
-- ⠀⢿⣿⠀⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠇⠀⠀⠀▝▘    ▝▀▘   ▀▀  ▀▀▝▘  ▀▀  ▝▀▘ ▝▀ ▀▘▝▀▀▀▘▝▀▀▀▘ ▀▀▝▘ ▀    ▝▀▝▘▝▀▀▀▘ ▀▀▘ 
-- ⠀⠈⠻⣶⣇⣰⡄⠀⠀⠀⠀⢀⣠⣾⡿⠏⠀⢤⡀⠀
-- ⠀⠀⠀⠈⠛⠛⠿⠿⠿⠿⡿⢿⡛⡩⠤⠴⠒⠛⠁⠀
-- maps/vanilla.lua | PotatoWizard23 | GNU GPL-3 (see LICENSE file)

vim.g.mapleader = ","

-- splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-S-h>", "<C-w><S-h>")
vim.keymap.set("n", "<C-S-j>", "<C-w><S-j>")
vim.keymap.set("n", "<C-S-k>", "<C-w><S-k>")
vim.keymap.set("n", "<C-S-l>", "<C-w><S-l>")

-- buffers
vim.keymap.set("n", "<Leader>r", ":execute 'e ' .. fnameescape(expand('%'))<CR>")
vim.keymap.set("n", "<Leader>x", ":close<CR>")

-- vim-config
vim.keymap.set("n", "<Leader>sv", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<Leader>ev", ":tabedit $MYVIMRC<CR>")

-- search
vim.keymap.set("n", "<C-n>", ":nohlsearch<CR>")

-- tabs
vim.keymap.set("n", "<Leader>t", ":tabnew<CR>")
vim.keymap.set("n", "<S-h>", ":tabprev<CR>")
vim.keymap.set("n", "<S-l>", ":tabnext<CR>")

-- netrw
vim.keymap.set("n", "<Leader>ef", ":Lexplore 20<CR>")

-- terminal
vim.keymap.set("n", "tt", ":terminal<CR>")
vim.keymap.set("t", "<C-o>", "<C-\\><C-n>")
