local M = {
	"nvim-treesitter/nvim-treesitter",
}

M.branch = "master"
M.lazy = false
M.build = ":TSUpdate"
M.opt = {
	ensure_installed = { "c", "cpp", "lua", "python" },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true }
}

return M
