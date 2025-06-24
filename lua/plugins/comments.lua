return {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = false,
  config = function ()
    vim.api.nvim_set_keymap('n', '<D-/>', 'gcc', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('v', '<D-/>', 'gc', { noremap = false, silent = true })
  end
}
