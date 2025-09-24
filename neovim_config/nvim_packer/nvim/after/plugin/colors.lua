function ColorMyPencils(color)

	vim.o.termguicolors = true
	vim.cmd [[
	" Transparent background
	hi Normal guibg=NONE ctermbg=NONE guifg=#B34C1A ctermfg=214 " orange text
	hi NormalNC guibg=NONE ctermbg=NONE

	" UI elements
	hi VertSplit guibg=NONE guifg=#855DDA ctermbg=NONE ctermfg=98 " purple-ish splits
	hi StatusLine guibg=NONE guifg=#B34C1A ctermbg=NONE ctermfg=214
	hi SignColumn guibg=NONE guifg=#844993 ctermbg=NONE ctermfg=98
	hi CursorLine guibg=#22062B guifg=NONE ctermbg=235 ctermfg=NONE
	hi LineNr guifg=#E62874 ctermfg=199 " pink line numbers
	]]
	vim.api.nvim_create_augroup('my-custom-highlights', { clear = true })
	vim.api.nvim_create_autocmd({ 'ColorScheme', 'BufWinEnter', 'BufReadPost' }, {
		group = 'my-custom-highlights',
		callback = function()
			-- Treesitter highlights
			vim.cmd [[
			hi! @comment guifg=#B534B7
			hi! @function guifg=#855DDA
			hi! @keyword guifg=#E62874
			hi! @string guifg=#19BDCF
			hi! @type guifg=#00FF88
			hi! @type.builtin guifg=#00FF88
			hi! @constant guifg=#470404
			hi! @special guifg=#FF6325
			hi! @operator guifg=#E62874
			hi! @preproc guifg=#9F78F2
			hi! @number guifg=#19BDCF
			hi! @boolean guifg=#470404
			hi! @conditional guifg=#B34C1A
			hi! @repeat guifg=#E62874
			hi! @label guifg=#C45B0E
			hi! @tag guifg=#1FFF89
			hi! @statement guifg=#B34C1A
			hi! @todo guifg=#00FF88 guibg=#22062B
			hi! @variable guifg=#B35E00
			hi! @punctuation.bracket guifg=#9F78F2
			hi! @character guifg=#DADC13
			hi! @field guifg=#19BDCF
			hi! @property guifg=#B3A26D
			hi! @punctuation.delimiter guifg=#E62874
			hi! @escape guifg=#E62874
			]]
		end,
	})


end

ColorMyPencils()
