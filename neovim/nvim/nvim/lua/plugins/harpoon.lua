return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>j", mark.add_file, { desc = "Harpoon add file" })
      vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu, { desc = "Harpoon toggle menu" })

      -- Navigate to specific harpoon files
      vim.keymap.set("n", "<M-1>", function() ui.nav_file(1) end, { desc = "Harpoon file 1" })
      vim.keymap.set("n", "<M-2>", function() ui.nav_file(2) end, { desc = "Harpoon file 2" })
      vim.keymap.set("n", "<M-3>", function() ui.nav_file(3) end, { desc = "Harpoon file 3" })
      vim.keymap.set("n", "<M-4>", function() ui.nav_file(4) end, { desc = "Harpoon file 4" })
      vim.keymap.set("n", "<M-5>", function() ui.nav_file(5) end, { desc = "Harpoon file 5" })
      vim.keymap.set("n", "<M-6>", function() ui.nav_file(6) end, { desc = "Harpoon file 6" })
      vim.keymap.set("n", "<M-7>", function() ui.nav_file(7) end, { desc = "Harpoon file 7" })
      vim.keymap.set("n", "<M-8>", function() ui.nav_file(8) end, { desc = "Harpoon file 8" })
      vim.keymap.set("n", "<M-9>", function() ui.nav_file(9) end, { desc = "Harpoon file 9" })
    end,
  },
}
