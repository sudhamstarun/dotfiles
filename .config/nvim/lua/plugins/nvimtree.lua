return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false,
      custom = {
        ".git",
        "node_modules",
        ".cache",
      },
    },
  },
}
