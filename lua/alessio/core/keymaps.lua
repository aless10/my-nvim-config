-- set leader key to space
vim.g.mapleader = " "
--
local keymap = vim.keymap -- for conciseness
--
---------------------
-- General Keymaps
---------------------

keymap.set("n", "<leader><Right>", "$")
keymap.set("n", "<leader><Left>", "_")
keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "<S-Left>", "vb")
keymap.set("n", "<S-Right>", "vb")
keymap.set("n", "<C-a>", "ggVG")
keymap.set("n", "<leader>ot", ":term<CR>i")
keymap.set("n", "<leader>otv", ":term<CR>i")

-- use esc to exit terminal mode
keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')

keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Custom keymaps

keymap.set("n", "<TAB>", "i<TAB><ESC>")
keymap.set("n", "<CR>", "i<CR><ESC>") --  move everything down:
keymap.set("n", "<BS>", "i<BS><ESC>") --  move everything up:

keymap.set("n", "<leader><S-Left>", ":bprev<cr>")
keymap.set("n", "<leader><S-Right>", ":bnext<cr>")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser path=%:p:h=%:p:h<cr>", { desc = "Browse Files" })

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- debugger
keymap.set("n", "<leader>tf", ":lua require('dap-python').test_method()<CR>")
keymap.set("n", "<leader>tc", ":lua require('dap-python').test_class()<CR>")
keymap.set("n", "<leader>td", ":lua require('dap').continue()<CR>")
keymap.set("n", "<leader>tb", ":lua require('dap').toggle_breakpoint()<CR>")
keymap.set("n", "<leader>rd", function()
  require("dap").continue()
end)
keymap.set("n", "<leader>n", function()
  require("dap").step_over()
end)
keymap.set("n", "<leader>in", function()
  require("dap").step_into()
end)
keymap.set("n", "<leader>out", function()
  require("dap").step_out()
end)

-- harpoon
keymap.set("n", "<leader>hui", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")

keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>") -- navigates to next mark
keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>") -- navigates to previous mark

-- jq

keymap.set("n", "<leader>pj", "%!jq<CR>")

keymap.set("n", "p", "hpl<ESC>")
