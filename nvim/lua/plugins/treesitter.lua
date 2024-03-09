require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'html',
    'css',
    'json',
    'lua',
    'go',
    'yaml',
    'markdown',
    'bash',
    'vim',
    'dockerfile',
    'gitignore',
    'query',
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
})
