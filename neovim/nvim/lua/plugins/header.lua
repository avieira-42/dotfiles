return {
  {
    "Diogo-ss/42-header.nvim",
    opts = {
      default_map = false,
      auto_update = true,
      user = "avieira-",
      mail = "avieira-@student.42porto.com",
    },
    config = function(_, opts)
      require("42header").setup(opts)
      vim.keymap.set("n", "<leader>h", "<cmd>Stdheader<CR>", { noremap = true, silent = true })
    end,
  },
}
