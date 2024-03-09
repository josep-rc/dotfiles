require("nvim-tree").setup({
  view = {
    width = {
      min = 30,
      max = -1,
      padding = 0,
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})
