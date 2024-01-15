vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- THEME
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- FILE BROWSER
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	-- BUFFERLINE
	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- LUALINE
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- TREESITTER (better colors)
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- TELESCOPE
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- LSP ZERO
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
			{ "saadparwaiz1/cmp_luasnip" },

			-- Snippets
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- LIVE SEVER
	use("barrett-ruth/live-server.nvim")

	-- FLUTTER TOOLS
	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- DART FORMATTER
	use("dart-lang/dart-vim-plugin")

	-- AUTO PAIRS
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- AUTO TAGS
	use("windwp/nvim-ts-autotag")

	-- INDENT
	use("lukas-reineke/indent-blankline.nvim")

	-- FORMATTER
	use("mhartington/formatter.nvim")
end)
