syntax enable
syntax on
colorscheme bensday

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

set nu
set encoding=utf-8

set cscopequickfix=s-,c-,d-,i-,e-

"自动补全
filetype plugin indent on
set completeopt=longest,menu
set nocp
filetype plugin on 

"括号自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

"中文乱码问题
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc
