-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup()
      vim.lsp.enable 'jdtls'
    end,
  },
  {
    'miikanissi/modus-themes.nvim',
    priority = 1000,
    config = function()
      require('modus-themes').setup {
        style = 'auto',
        variants = {
          modus_operandi = 'default',
          modus_vivendi = 'tinted',
        },
        transparent = true,
        dim_inactive = true,
        hide_inactive_statusline = false,
        line_nr_column_background = false,
        sign_column_background = false,
      }
      vim.cmd [[colorscheme modus]]
    end,
  },
}
