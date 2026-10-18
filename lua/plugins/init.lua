return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      local opts = require "nvchad.configs.gitsigns"
      opts.current_line_blame = true
      opts.current_line_blame_opts = {
        delay = 300,
        virt_text_pos = "eol",
      }
      return opts
    end,
  },

  {
    "nvzone/volt",
    lazy = true,
  },
  {
    "nvzone/floaterm",
    dependencies = { "nvzone/volt" },
    cmd = { "FloatermToggle", "FloatermNew" },
    config = function()
      require("floaterm").setup {
        size = { h = 85, w = 85 }, -- 85% of screen height/width
      }
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
