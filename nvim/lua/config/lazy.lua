
-- lazy.nvim plugin manager installation if not present
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

-- lazy.nvim configuration
require("lazy").setup({
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-moon]])
    end,
  },
  {'nvim-lualine/lualine.nvim'},
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  {'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'nvim-tree/nvim-tree.lua'},
  {'ThePrimeagen/vim-be-good'}
})
