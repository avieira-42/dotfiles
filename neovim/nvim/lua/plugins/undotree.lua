return {
  {
    "mbbill/undotree",
    config = function()
      -- Keymap to toggle undo tree
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
    end,
  },
}
