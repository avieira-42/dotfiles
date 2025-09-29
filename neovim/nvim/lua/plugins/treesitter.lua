return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "cpp", "c", "c_sharp",
          "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },
  {
    "nvim-treesitter/playground",
    config = function()
      -- optional config for playground if needed
    end,
  },
}
