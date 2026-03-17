local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

autocmd("BufWritePre", {
  callback = function()
    if vim.bo.filetype ~= "json" then
      local save_cursor = vim.fn.getpos(".")
      vim.cmd([[%s/\s\+$//e]])
      vim.fn.setpos(".", save_cursor)
    end
  end,
})
