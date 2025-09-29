function ColorMyPencils(color)


	vim.o.termguicolors = true
	vim.cmd [[
	" Transparent background
	hi Normal guibg=NONE ctermbg=NONE guifg=#E62874 ctermfg=214 " orange text
	hi NormalNC guifg=#E62874 ctermfg=214 guibg=NONE ctermbg=NONE 
	hi Directory guifg=#888888 ctermfg=214 guibg=NONE ctermbg=NONE 

	" UI elements
	hi Search guibg=NONE guifg=#855DDA ctermbg=NONE ctermfg=98 " purple-ish splits
	hi VertSplit guibg=NONE guifg=#855DDA ctermbg=NONE ctermfg=98 " purple-ish splits
	hi StatusLine guibg=NONE guifg=#E62874 ctermbg=NONE ctermfg=199
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
			hi! @keyword guifg=#882961
			hi! @string guifg=#66447A
			hi! @string.escape guifg=#B534B7
			hi! @type guifg=#882961
			hi! @type.builtin guifg=#882961
			hi! @function guifg=#450B8F
			hi! @operator guifg=#882961
			hi! @variable guifg=#66447A
			hi! @property guifg=#66447A
			hi! @character guifg=#66447A
			hi! @number guifg=#450B8F
			hi! @constant guifg=#450B8F
			hi! @constant.builtin guifg=#450B8F
			hi! @special guifg=#DADC13
			hi! @boolean guifg=#470404
			hi! @repeat guifg=#E62874
			hi! @label guifg=#C45B0E
			hi! @tag guifg=#B534B7
			hi! @statement guifg=#B34C1A
			hi! @todo guifg=#00FF88 guibg=#22062B
			hi! @punctuation.bracket guifg=#66447A
			hi! @punctuation.delimiter guifg=#66447A
			hi! @punctuation.special guifg=#763377
			hi! @constructor guifg=#66447A
			]]
		end,
	})


end
ColorMyPencils()
