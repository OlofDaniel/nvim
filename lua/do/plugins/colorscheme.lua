return{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "Night",
      transparent = true,
      styles = {
        sidebars = "transparent",
      }
    })

    vim.cmd("colorscheme tokyonight")
  end


}
