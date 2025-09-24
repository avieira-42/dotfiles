-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   set.lua                                            :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: avieira- <avieira-@student.42porto.com>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/09/24 20:51:45 by avieira-          #+#    #+#             --
--   Updated: 2025/09/24 20:52:03 by avieira-         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
