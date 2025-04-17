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
-- plugins.lua | PotatoWizard23 | GNU GPL-3 (see LICENSE file)

-- bootstrap packer
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use { -- LSP Setup Plugins
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use { -- Completion
		"ms-jpq/coq_nvim",
	}

	use { -- Aesthetics
		"rebelot/kanagawa.nvim",
	}

	use { -- Treesitter
		"nvim-treesitter/nvim-treesitter",
	}

	use { -- Text Manipulation
		"tpope/vim-surround",
		"tpope/vim-commentary",
		"windwp/nvim-autopairs",
	}
	use { -- Formatting & Linting
		"nvimdev/guard.nvim",
		requires = { "nvimdev/guard-collection" },
	}

	use { -- DAP
		"rcarriga/nvim-dap-ui",
		requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
	}

	use { -- Filesystem
		"tpope/vim-vinegar",
	}

	use { -- Telescope
		"nvim-telescope/telescope.nvim", branch = "0.1.x",
		requires = { "nvim-lua/plenary.nvim" },
	}

	use { -- Git
		"tpope/vim-fugitive",
		"tpope/vim-rhubarb",
	}

	use { -- Maximizing Windows
		"szw/vim-maximizer",
	}

	use { -- Debugging
		"tpope/vim-dispatch",
	}

	use { -- C/C++ Programming
		"linluk/vim-c2h",
	}

	if packer_bootstrap then
		require("packer").sync()
	end
end)
