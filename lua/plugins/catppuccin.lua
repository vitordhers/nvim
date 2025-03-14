return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,
    integrations = {
      cmp = true,
      treesitter = true,
      telescope = true
    },
    flavour = "frappe",
    color_overrides = {
      frappe = {
        base = "#000000",
        mantle = "#000000",
        crust = "#000000",
      },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
