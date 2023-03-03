vim.g.mapleader = ' '
local keymap = vim.keymap

-- windows:
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })

keymap.set('n', '<leader>=', ':vertical resize +5<cr>', { silent = true })
keymap.set('n', '<leader>-', ':vertical resize -5<cr>', { silent = true })
keymap.set('n', '<leader>]', ':resize +5<cr>', { silent = true })
keymap.set('n', '<leader>[', ':resize -5<cr>', { silent = true })

keymap.set('n', '<leader><up>', '<cmd>wincmd k<cr>', { silent = true })
keymap.set('n', '<leader><down>', '<cmd>wincmd j<cr>', { silent = true })
keymap.set('n', '<leader><left>', '<cmd>wincmd h<cr>', { silent = true })
keymap.set('n', '<leader><right>', '<cmd>wincmd l<cr>', { silent = true })

keymap.set('n', '<leader>k', '<cmd>wincmd k<cr>', { silent = true })
keymap.set('n', '<leader>j', '<cmd>wincmd j<cr>', { silent = true })
keymap.set('n', '<leader>h', '<cmd>wincmd h<cr>', { silent = true })
keymap.set('n', '<leader>l', '<cmd>wincmd l<cr>', { silent = true })

-- key map
keymap.set('n', 'Z', '')
keymap.set('n', 'ZZ', '')

keymap.set('n', 'J', 'G')
keymap.set('x', '4', '$')
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')
keymap.set('x', 'H', '^')
keymap.set('x', 'L', '$')
keymap.set('n', 'U', '<c-r>') -- redo

keymap.set('n', '<tab>', '.')
keymap.set('i', 'fj', '<esc>', { silent = true })

keymap.set('n', '<c-a>', 'gg<S-v>G', { silent = true })
keymap.set('n', '<Leader>n', ':nohlsearch<cr>', { silent = true })

-- Packer
keymap.set('n', '<Leader>pi', '<cmd>PackerInstall<cr>')
keymap.set('n', '<Leader>ps', '<cmd>PackerSync<cr>')
keymap.set('n', '<Leader>pc', '<cmd>PackerClean<cr>')

-- yank: filename and pathname
keymap.set('n', '<Leader>yn', "<cmd>let @+ = expand('%:t')<cr>", { silent = true })
keymap.set('n', '<Leader>yp', "<cmd>let @+ = expand('%:p:h')", { silent = true })

keymap.set('n', '<Leader>.',
  function()
    if vim.opt.list:get() then
      vim.cmd("set nolist")
    else
      vim.cmd("set list")
    end
  end, { silent = true })

-- Plugins --

-- Folding
keymap.set('n', 'zj', require('ufo').goNextClosedFold, { silent = true })
keymap.set('n', 'zk', require('ufo').goPreviousClosedFold, { silent = true })
keymap.set('n', 'zr', require('ufo').openAllFolds, { silent = true })
keymap.set('n', 'zm', require('ufo').closeAllFolds, { silent = true })

-- lspsaga
keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', { silent = true })
-- go to definition
keymap.set('n', '[d', '<cmd>Lspsaga lsp_finder<cr>', { silent = true })
keymap.set('n', '[p', '<cmd>Lspsaga peek_definition<cr>', { silent = true })
keymap.set('n', '[o', '<cmd>Lspsaga outline<cr>', { silent = true })
-- go to references
keymap.set('n', '[r', require('telescope.builtin').lsp_references, {})
keymap.set('n', '[j', '<cmd>Lspsaga diagnostic_jump_next<cr>', { silent = true })
keymap.set('n', '[k', '<cmd>Lspsaga diagnostic_jump_prev<cr>', { silent = true })
keymap.set('n', '[c', '<cmd>Lspsaga code_action<cr>', { silent = true })
keymap.set('n', 'rn', '<cmd>Lspsaga rename<cr>', { silent = true })

keymap.set('n', '[[', '')
keymap.set('n', ']]', '')

-- telescope
keymap.set('n', ']s', '<cmd>Telescope live_grep<cr>', { silent = true })
keymap.set('n', ']d', '<cmd>Telescope treesitter<cr>', { silent = true })
keymap.set('n', ']f', '<cmd>Telescope find_files<cr>', { silent = true })

-- comment
keymap.set('n', '<Leader>//', '<Plug>kommentary_line_default', { silent = true })
keymap.set('x', '<Leader>//', '<Plug>kommentary_visual_default', { silent = true })

-- bookmark
-- mm: add/remove a bookmark at current line
-- mi: add/edit/remove an annotation at current line
keymap.set('n', ']b', "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>")
keymap.set('n', '[b', "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>")
keymap.set('n', 'md', '<cmd>BookmarkClearAll<cr>', { silent = true })

-- formatting
keymap.set('n', '<Leader>ff', '<cmd>lua vim.lsp.buf.format()<cr>', { silent = true })
