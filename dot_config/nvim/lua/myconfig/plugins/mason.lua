local servers = { "lua_ls", "clangd","luau_lsp", "ts_ls", "lemminx", "omnisharp" }

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    local lspconfig = require("lspconfig")

	for _, server in ipairs(servers) do
      if server == "luau_lsp" then
        lspconfig[server].setup({
          settings = {
            luau = {
              sourcemap = nil,
            },
          },
        })
		elseif server == "lemmix" then
			lspconfig[server].setup({
				filetypes = { "xml","xaml" }
			})
      else
        lspconfig[server].setup({})
      end
    end
  end
}
