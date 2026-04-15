return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua","luau", "vim", "vimdoc", "query", "markdown", "markdown_inline","regex","json","xml", "html", "c_sharp","cmake" },
			sync_install = false,
			auto_install = true,
			highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
				disable = false 
      },
    })
  end
}
