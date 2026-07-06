return {
	-- Package Manager
	"folke/lazy.nvim",

	-- Snacks.nvim (high priority, not lazy loaded)
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			notifier = { enabled = true },
			-- Disabled: quickfile starts Treesitter before dadima.markdown guards apply.
			quickfile = { enabled = false },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			styles = {
				notification = {
					wo = { wrap = true }, -- Wrap notifications
				},
			},
		},
	},

	-- Sneak
	"justinmk/vim-sneak",

	-- GitHub PRs/issues
	{
		"justinmk/guh.nvim",
		cmd = "Guh",
		keys = {
			{ "<leader>gh", "<cmd>Guh<cr>", desc = "GitHub PRs/issues" },
		},
	},

	-- File/search picker
	{
		"dmtrKovalenko/fff.nvim",
		build = function()
			require("fff.download").download_or_build_binary()
		end,
		lazy = false,
		opts = {
			lazy_sync = true,
		},
		keys = {
			{ "<leader>pf", function() require("fff").find_files() end, desc = "Find files" },
			{ "<C-p>", function() require("fff").find_files() end, desc = "Find git files" },
			{ "<leader>ps", function() require("fff").live_grep() end, desc = "Live grep" },
			{
				"<leader>vh",
				function()
					vim.ui.select(vim.fn.getcompletion("", "help"), { prompt = "Help tags" }, function(choice)
						if choice then
							vim.cmd.help(choice)
						end
					end)
				end,
				desc = "Help tags",
			},
		},
	},

	-- Theme (prioritized for fast loading)
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000, -- Load before other plugins
		lazy = false, -- Don't lazy load the colorscheme
		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})
			vim.defer_fn(function()
				vim.cmd.colorscheme("rose-pine")
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			end, 50)
		end,
	},

	{
		"ThePrimeagen/vim-be-good",
		cmd = "VimBeGood",
	},
}
