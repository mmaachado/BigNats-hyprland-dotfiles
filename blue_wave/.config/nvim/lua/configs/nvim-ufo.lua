local opts = {
  filetype_exclude = { 'help', 'alpha', 'dashboard', 'neo-tree', 'Trouble', 'lazy', 'mason' },
}
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('local_detach_ufo', { clear = true }),
  pattern = opts.filetype_exclude,
  callback = function()
    require('ufo').detach()
  end,
})

vim.o.foldcolumn = '3'
vim.o.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.o.foldenable = true

require('ufo').setup(opts)
