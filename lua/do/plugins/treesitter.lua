return{
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
	"python",
	"java",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
      },
    })
  end
}
