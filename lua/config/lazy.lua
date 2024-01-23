-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- vim optr, temporary
vim.g.mapleader = " "
vim.wo.number = true
-- Setup plugins directory
require("lazy").setup("plugins")

--{import = "lazyvim.plugins.extras.coding.copilot" }
-- Setup colorscheme
