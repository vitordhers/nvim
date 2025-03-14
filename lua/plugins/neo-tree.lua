return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "muniftanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "left"
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      source_selector = {
        winbar = true, -- Shows source selector on the window bar
      },
    })
    vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", {})
  end,
}
