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

vmap("<C-C>", "\"+y")
nmap("<C-P>", "\"+P")

-- Tabs
nmap("<M-.>", ":BufferNext<CR>")
nmap("<M-,>", ":BufferPrevious<CR>")
nmap("<A-<>", ":BufferMovePrevious<CR>")
nmap("<A->>", ":BufferMoveNext<CR>")
nmap("<M-w>", ":BufferClose<CR>")

-- Split view
nmap("<C-J>", "<C-W><C-J>")
nmap("<C-K>", "<C-W><C-K>")
nmap("<C-L>", "<C-W><C-L>")
nmap("<C-H>", "<C-W><C-H>")
nmap("<C-Q>", ":q<CR>")

-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Commenting
vim.api.nvim_set_keymap('n', "<M-/>", "gcc", { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', "<M-/>", "gcc", { noremap = false, silent = true })

-- NERDTree
nmap("<C-n>", ":NERDTreeToggle<CR>")
nmap("<leader>n", ":NERDTreeFocus<CR>")

