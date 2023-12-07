
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
