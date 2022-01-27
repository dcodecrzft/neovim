-- █▀█ █░░ █░█ █▀▀ █ █▄░█ █▀
-- █▀▀ █▄▄ █▄█ █▄█ █ █░▀█ ▄█

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


local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- The plugins:
    use 'wbthomason/packer.nvim' -- Packer will maange itself. 
    use 'Mofiqul/dracula.nvim' -- Dracula theme. 
    use {
    'nvim-lualine/lualine.nvim', -- Lualine
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
    -- Completion plugins. 
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-buffer' -- Buffer Completions. 
    use 'hrsh7th/cmp-path' -- Path completions. 
    use 'hrsh7th/cmp-cmdline' -- Cmdline completions. 
    use 'saadparwaiz1/cmp_luasnip' -- Snippet completions. 
    -- Snippets.
    use 'L3MON4D3/LuaSnip' -- Snippet engine. 
    use 'rafamadriz/friendly-snippets' -- Few snippets. 
  if packer_bootstrap then
    require('packer').sync()
  end
end)


