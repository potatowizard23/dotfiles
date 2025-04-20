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
-- init.lua | PotatoWizard23 | GNU GPL-3 (see LICENSE file)

require("plugins")
require("options")

require("setup.treesitter")
require("setup.lsp")
require("setup.dap")
require("setup.guard")

require("maps.vanilla")
require("maps.maximizer")
require("maps.telescope")
require("maps.lsp")
require("maps.dap")

require("autocmds.go")
require("autocmds.cpp")
