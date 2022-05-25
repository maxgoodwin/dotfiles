function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- M = alt
-- A = alt + shift
-- C = control

vmap("<C-C>", "\"+y")
nmap("<C-P>", "\"+P")

-- Tabs
nmap("<M-.>", ":BufferNext<CR>")
nmap("<M-,>", ":BufferPrevious<CR>")
nmap("<A-<>", ":BufferMovePrevious<CR>")
nmap("<A->>", ":BufferMoveNext<CR>")
nmap("<M-w>", ":BufferClose<CR>")

-- Add split window
nmap("<M-C-L>", ":FocusSplitRight<CR>")
nmap("<M-C-H>", ":FocusSplitLeft<CR>")
nmap("<M-C-K>", ":FocusSplitUp<CR>")
nmap("<M-C-J>", ":FocusSplitDown<CR>")
nmap("<M-C-T>", ":FocusToggle<CR>")

-- Split view
nmap("<C-j>", "<C-W><C-J>")
nmap("<C-k>", "<C-W><C-K>")
nmap("<C-l>", "<C-W><C-L>")
nmap("<C-h>", "<C-W><C-H>")
nmap("<C-q>", ":q<CR>")

-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Commenting
vim.api.nvim_set_keymap('n', "<M-/>", "gcc", { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', "<M-/>", "gcc", { noremap = false, silent = true })

-- NvimTree
nmap("<C-n>", ":NvimTreeToggle<CR>")
-- nmap("<leader>n", ":NERDTreeFocus<CR>")

