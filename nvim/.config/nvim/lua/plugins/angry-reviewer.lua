return {
  "anufrievroman/vim-angry-reviewer", 

  config = function()
    vim.keymap.set('n', '<leader>an', '<cmd>cnext<cr>', {desc="Next suggestion"})
    vim.keymap.set('n', '<leader>ap', '<cmd>cprev<cr>', {desc="Previous suggestion"})
  end
}
