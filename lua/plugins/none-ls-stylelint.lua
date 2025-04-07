return {
  'nvimtools/none-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = function(_, opts)
    local nls = require 'null-ls'
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.stylelint.with {
        command = 'npx',
        args = {
          'stylelint',
          '--formatter',
          'json',
          '--stdin',
          '--stdin-filename',
          '$FILENAME',
        },
        filetypes = { 'css', 'scss', 'less', 'svelte' },
      },
    })
  end,
}
