vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- code navigation
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.declaration()<cr>")
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<cr>")
keymap.set("n", "<leader>td", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
keymap.set("n", "<leader>si", "<cmd>lua require'jdtls'.super_implementation()<cr>")
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<cr>")

-- reformat
keymap.set("n", "<leader>rf", "<cmd>lua vim.lsp.buf.format { async = true }<cr>")
keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>")
keymap.set("n", "<leader>re", "<cmd>Lspsaga code_action<cr>")

-- dap
keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
keymap.set("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
keymap.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
keymap.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)

keymap.set("n", "<leader>da", "<cmd>lua require'dapui'.toggle()<cr>")
keymap.set("n", "<leader>jj", "<cmd>lua require'dap'.continue()<cr>")
