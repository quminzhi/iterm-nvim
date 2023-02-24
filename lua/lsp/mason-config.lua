require("mason-tool-installer").setup({
  ensure_installed = {
    'lua-language-server',
    'vim-language-server',
    'prettier',
    'cpplint',
    'gitlint',
    'clang-format'
  },
  auto_update = true
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'bashls',
    'clangd',
    'cmake',
    'marksman',
    'pyright',
  },
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  automatic_installation = true,
})
