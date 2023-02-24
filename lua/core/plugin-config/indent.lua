local indent_blankline = require("indent_blankline")

indent_blankline.setup({
  space_char_blankline = " ",
  show_current_context_start = false,
  show_current_context = true,
  show_end_of_line = true,
  indent_blankline_filetype_exclude = {
    "man",
    "help",
    "dashboard",
    "lspsagaoutline",
    "lspinfo",
    "packer",
    "checkhealth",
  },
})
