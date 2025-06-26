set number
set relativenumber
set tabstop=4
set shiftwidth=4
set cindent
set splitbelow
set noswapfile
set bg=dark

:nmap <Space>t :vert ter
:nmap <Space>r :%s//
:nmap <Space>rl :*:s//r/g
:nmap <Space>f :vs . <Enter>
:nmap <Space>u :UpdateTypesFile <Enter>

inoremap jj <Esc>

""" PLUGINSJ -> PlugInstall/PlugClean

call plug#begin('~/.vim/plugged')

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-scripts/TagHighlight', { 'for': ['c', 'cpp'] }
"Commands -> :UpdateTypesFile (builds/refreshes the syntax file)
"		  -> :EnableTagHighlight ((re)loads it for the current buffer)

call plug#end()
