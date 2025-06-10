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

inoremap jj <Esc>
