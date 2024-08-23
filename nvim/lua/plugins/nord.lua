return {
  "shaunsingh/nord.nvim",
  lazy = false,
  name = "nord",
  priority = 1000,
  config = function()
    vim.g.nord_disable_background = true
    vim.cmd.colorscheme "nord"
  end
}
