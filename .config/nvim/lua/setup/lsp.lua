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
-- setup/lsp.lua | PotatoWizard23 | GNU GPL-3 (see LICENSE file)

require("mason").setup()

local lang_servers = { "gopls", "lua_ls", "bashls", "clangd" }

require("mason-lspconfig").setup({
    ensure_installed = lang_servers,
})

local lspconfig = require("lspconfig")

vim.g.coq_settings = { auto_start = true, }

local coq = require("coq")

for _,server in ipairs(lang_servers) do
    lspconfig[server].setup({
		capabilities = coq.lsp_ensure_capabilities()
	})
end

vim.lsp.enable(lang_servers)
