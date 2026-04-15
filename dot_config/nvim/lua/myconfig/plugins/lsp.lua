return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          workspace = { checkThirdParty = false },
          diagnostics = { globals = { "vim" } }
        }
      }
    })
  end
}
