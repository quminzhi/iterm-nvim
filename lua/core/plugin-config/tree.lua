vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = { quit_on_open = true }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  filters = {
    custom = { '^.git$', '^node_modules$' }
  },
  git = {
    ignore = true,
    enable = true,
    timeout = 500
  },
  view = {
    number = false,
    relativenumber = false,
    width = 32,
    signcolumn = "yes",
    side = "left",
    hide_root_folder = true,
    mappings = {
      custom_only = true,
      list = {
        { key = "u",    action = "dir_up" },
        { key = "o",    action = "edit" },
        { key = "<CR>", action = "edit" },
        { key = ".",    action = "toggle_dotfiles" },
        { key = "r",    action = "rename" },
        { key = "R",    action = "refresh" },
        { key = "c",    action = "create" },
        { key = "d",    action = "remove" },
        { key = "i",    action = "toggle_file_info" },
        { key = "p",    action = "copy_path" }
      }
    },
  },
  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = ''
    }
  }
})

vim.keymap.set('n', '<Leader>d', '<cmd>NvimTreeToggle<cr>')
