-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   set.lua                                            :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: avieira- <avieira-@student.42porto.com>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/09/24 20:51:45 by avieira-          #+#    #+#             --
--   Updated: 2025/10/20 18:40:50 by avieira-         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --


-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs and indentation
vim.opt.tabstop = 4          -- Show tabs as 4 spaces wide
vim.opt.softtabstop = 4      -- Editing operations treat tab as 4 spaces
vim.opt.shiftwidth = 4       -- Indent levels are 4 spaces
vim.opt.expandtab = false    -- NEVER convert tabs to spaces
vim.opt.smartindent = true   -- Smart autoindenting

-- Enforce tabs for all filetypes
vim.cmd([[
  set noexpandtab
  filetype plugin indent on
  autocmd FileType * setlocal noexpandtab
]])

-- Text wrapping
vim.opt.wrap = false

-- Swap/backup/undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- UI tweaks
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
