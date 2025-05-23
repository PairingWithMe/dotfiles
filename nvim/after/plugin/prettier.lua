vim.keymap.set('n', '<leader>fp', function() 
  vim.lsp.buf.format()
end)

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.json", "*.css", "*.md" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
