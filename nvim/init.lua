-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.numberwidth = 1
vim.opt.showmatch = true
vim.opt.wrap = false 
vim.opt.termguicolors = true
vim.g.netrw_browse_split = 2
vim.g.netrw_winsize = 85 
vim.g.netrw_banner = 0

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', {desc = 'Explorer'})
vim.keymap.set('n', '<tab>', '<cmd>bnext<cr>', {desc = 'Next buffer'})
vim.keymap.set('n', '<S-tab>', '<cmd>bprev<cr>', {desc = 'Previous buffer'})
vim.keymap.set('n', '<C-w>', '<cmd>bd<cr>', {desc = 'Close current buffer'})

-- cursor style
vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor,a:blinkon100'

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

require('lualine').setup()
require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
})
require("ibl").setup()
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'tsx',
    'html',
    'css',
    'json',
    'lua',
    'go',
  },
})
require("nvim-tree").setup()
