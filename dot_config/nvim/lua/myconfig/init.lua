require("myconfig.options")
require("myconfig.keymaps")
require("myconfig.globals")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)


require("lazy").setup({
  spec = {
    { import = "myconfig.plugins" },
  }
})
