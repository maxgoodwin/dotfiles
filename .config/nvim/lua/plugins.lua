-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function()
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'vimwiki/vimwiki'
  -- use 'matveyt/neoclip' -- Automatically setup clipboard

  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

  -- Colorschemes
  use "lunarvim/colorschemes"
  use "lunarvim/darkplus.nvim"
  use "romgrk/doom-one.vim"
  use "folke/lsp-colors.nvim"
	use "folke/tokyonight.nvim"

  use { -- treesitter
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use { --lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { --barbar
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  use { -- telescope
    'nvim-telescope/telescope.nvim',
    requires = {
	{'nvim-lua/plenary.nvim'},
	{'BurntSushi/ripgrep'},
	{'sharkdp/fd'},
	{'nvim-treesitter/nvim-treesitter'},
	{'kyazdani42/nvim-web-devicons'}
      }
  }

  use { -- nvim-tree
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons'
		},
		tag = 'nightly' -- use stable release
	}

  use 'windwp/nvim-autopairs' -- Auto parenthesis closing
  use 'lewis6991/gitsigns.nvim' -- Git indicators within file
	use 'beauwilliams/focus.nvim' -- Split screen auto-sizing
	use 'mhinz/vim-startify' -- start screen
	use 'akinsho/toggleterm.nvim' -- terminal

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
