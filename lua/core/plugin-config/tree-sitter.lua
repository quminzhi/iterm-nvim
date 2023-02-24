require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "markdown", "make", "yaml", "c", "lua", "vim", "cpp", "go", "bash", "cmake", "dockerfile", "markdown_inline", "json", "regex", "help" },

  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
    disable = {}
  },

  autotag = {
    enable = true
  },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  }
}
