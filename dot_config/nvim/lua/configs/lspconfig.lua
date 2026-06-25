require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "fish_lsp", "tsserver", "svelte" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
vim.lsp.config("tsserver", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript" },
  root_dir = vim.fs.root(0, { "package.json", ".git" }),
})
