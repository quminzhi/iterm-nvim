local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.clazy,
    null_ls.builtins.diagnostics.cmake_lint,

    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.cmake_format,
    -- for more, refer to link below
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#formatting
  },
})
