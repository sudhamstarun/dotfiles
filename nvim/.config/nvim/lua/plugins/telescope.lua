return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = { "node_modules", ".git/" },
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          preview_width = 0.6,
        },
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
      },
    },
  },
  config = function()
    require("telescope").load_extension("fzf")

    local map = vim.keymap.set

    -- Find files (Ctrl-f)
    map("n", "<C-f>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files" })

    -- Fuzzy search in files (Ctrl-g)
    map("n", "<C-g>", "<cmd>Telescope live_grep<cr>", { desc = "Live grep in files" })

    -- Search buffers (Ctrl-b)
    map("n", "<C-b>", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy search buffers" })

    -- Search recent files (Ctrl-r)
    map("n", "<C-r>", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy search recent files" })

    -- Search help tags (leader fh)
    map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Search help tags" })

    -- Search diagnostics (leader d)
    map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", { desc = "Search diagnostics" })

    -- Git files (leader gf)
    map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Search git files" })

    -- Git commits (leader gc)
    map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Search git commits" })

    -- Search symbols in current file (leader ss)
    map("n", "<leader>ss", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Search document symbols" })

    -- Search symbols in workspace (leader sw)
    map("n", "<leader>sw", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Search workspace symbols" })

    -- Search current word (leader fw)
    map("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Search current word" })

    -- Quick command palette (leader ;)
    map("n", "<leader>;", "<cmd>Telescope commands<cr>", { desc = "Command palette" })
  end,
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
}
