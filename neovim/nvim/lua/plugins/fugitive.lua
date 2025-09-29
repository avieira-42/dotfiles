return {
  {
    "tpope/vim-fugitive",
    config = function()
      -- Set keymaps after the plugin is loaded
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
      vim.keymap.set("n", "<leader>gc", vim.cmd.Git, { desc = "Git commit" })
    end,
  },
}
