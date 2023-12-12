return {
  -- git and projects
  { 'sindrets/diffview.nvim' },
  -- Git related plugins
  { 'tpope/vim-fugitive' },
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {}
    end
  },
  {
    'akinsho/git-conflict.nvim',
    init = function()
      require('git-conflict').setup {
        default_mappings = false,
        disable_diagnostics = true,
      }
    end,
    keys = {
      { '<leader>gco', ':GitConflictChooseOurs<cr>' },
      { '<leader>gct', ':GitConflictChooseTheirs<cr>' },
      { '<leader>gcb', ':GitConflictChooseBoth<cr>' },
      { '<leader>gc0', ':GitConflictChooseNone<cr>' },
      { ']x', ':GitConflictNextConflict<cr>' },
      { '[x', ':GitConflictPrevConflict<cr>' },
    },
  },
  -- github PRs and the like with gh-cli
  -- { 'pwntester/octo.nvim', config = function()
  --   require "octo".setup()
  -- end },
}
