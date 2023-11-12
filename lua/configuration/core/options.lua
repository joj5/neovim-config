local utils = require("configuration.core.utils")

local options = {

	-- line numbers
	relativenumber = true,
	number = true, -- Make line numbers default

	-- tabs and indentation
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	autoindent = true,

	-- line wrapping
	wrap = false,

	-- search
	ignorecase = true, -- Case insensitive searching UNLESS /C or capital in search
	smartcase = true,

	-- cursor line
	cursorline = true,

	-- appearance
	termguicolors = true,
	background = "dark",
	signcolumn = "yes",

	-- backspace
	backspace = "indent,eol,start",

	-- clipboard
	clipboard = "unnamed,unnamedplus", -- use system clipboard

	-- split windows
	splitright = true,
	splitbelow = true,

	-- other
	iskeyword = "-",
	guicursor = "",
	colorcolumn = "80",
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

utils.set_indent_sizes({ go = 4, python = 4, rust = 4, cpp = 4, c = 4, make = 4, lua = 4, java = 4, json = 4 })
