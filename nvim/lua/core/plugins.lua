local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use "windwp/nvim-autopairs"
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = {{'nvim-lua/plenary.nvim' }}
  }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'

  use "daschw/leaf.nvim"
  use "EdenEast/nightfox.nvim"
  use 'Abstract-IDE/Abstract-cs'
  use "rebelot/kanagawa.nvim"
  use ({ 'projekt0n/github-nvim-theme' })
  use "olimorris/onedarkpro.nvim"
  use {'IneptusMechanicus/mechanicus.nvim'}
  use {'srcery-colors/srcery-vim', as = 'srcery'}
  use { 'erietz/set3.nvim', requires = 'tjdevries/colorbuddy.nvim' }
  use { "zootedb0t/citruszest.nvim" }
  use { 'dasupradyumna/midnight.nvim' }
  use {'chriskempson/base16-vim'}
  use {'folke/neodev.nvim'}
  use {'dikiaap/minimalist'}
  use {'tomasr/molokai'}
  use {'fmoralesc/molokayo'}
  use {'NLKNguyen/papercolor-theme'}
  use {'christophermca/meta5'}
  use {'tyrannicaltoucan/vim-deep-space'}
  use {'ayu-theme/ayu-vim'}
  use {'gilgigilgil/anderson.vim'}
  use {'sainnhe/sonokai'}
  use {'bluz71/vim-moonfly-colors'}
  use {'tanvirtin/monokai.nvim'}
  use {"Alexis12119/nightly.nvim"}
  use {'Th3Whit3Wolf/onebuddy'}
  use {'PHSix/nvim-hybrid'}
  use {"fenetikm/falcon"}
  -- If you are using Packer
  use {'rmehri01/onenord.nvim'}
  use {"cpea2506/one_monokai.nvim"}
  use {"vimoxide/vim-cinnabar"}
  use {"mcchrish/vim-no-color-collections"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
