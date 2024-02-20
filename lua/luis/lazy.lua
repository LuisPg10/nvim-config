-- INSTALL OR UPDATE LAZY.NVIM
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- LOAD LAZY.NVIM
require("lazy").setup({

	-- TRESITTER (better colors)
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- THEME
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- FILE EXPLORER
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- BUFFERLINE
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- LUALINE
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- LSP ZERO
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {

			-- Mason support
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
	},

	-- LIVE SERVER
	{
		"barrett-ruth/live-server.nvim",
		build = "npm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},

	-- FLUTTER TOOLS
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
	},

	-- AUTOPAIRS
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	-- AUTOTAGS
	"windwp/nvim-ts-autotag",

	-- INDENT
	"lukas-reineke/indent-blankline.nvim",

	-- FORMATTER
	"mhartington/formatter.nvim",

	-- TODO HIGHLIGHT
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		opts = {},
	},
}, {
	lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json",
})
