return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
    })
  end,
}
