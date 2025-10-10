local M = { 'neovim/nvim-lspconfig' }

M.opts = {
	servers = {
		clangd = {},
		lua_ls = {},
		pyright = {}
    }
}

M.config = function(_, opts)
	local blink = require('blink.cmp')
    for server, config in pairs(opts.servers) do
      	-- passing config.capabilities to blink.cmp merges with the capabilities in your
      	-- `opts[server].capabilities, if you've defined it
      	config.capabilities = blink.get_lsp_capabilities(config.capabilities)
      	vim.lsp.config(server, config)
		vim.lsp.enable({ server })
    end
end

return M
