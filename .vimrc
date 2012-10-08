call pathogen#helptags()
call pathogen#infect()
set sw=2
set ts=2

set tags=~/work/ewhine/tags,~/work/ewhine/tmp/mtags

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
	autocmd FileType python setlocal et sta sw=4 sts=4
endif

" history..........
set history=100
" ................
set iskeyword+=_,$,@,%,#,-
" ......txt.....txt.vim...
"
au BufRead,BufNewFile *  setfiletype txt

au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.less set filetype=less
"au BufRead,BufNewFile *.scss set ft=scss.css
au BufRead,BufNewFile *.css set filetype=css

au BufRead,BufNewFile *.mustache set filetype=mustache

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.js set ft=javascript

"...... vi ....
set nocompatible
".. Vim ..... .vimrc ........................
"source $VIMRUNTIME/vimrc_example.vim
" .backspace....indent, eol, start.
set backspace=2
" ..backspace.........
set whichwrap+=<,>,h,l
".......................
set wildmenu
set nocindent
".....,.................... .
" set autoindent
".........
set foldmethod=manual
".......nonumber.
"set number
".....(..wrap)
set nowrap
".........
set nobackup
" ....swap....buffer.........
setlocal noswapfile
"set bufhidden=hide 
".............................
set showmatch
" ...................
set matchtime=5
" ...................firefox....
set incsearch
" ....
set novisualbell
"...............
set formatoptions+=mM
".. UTF-8 ..
set fileencodings=utf-8

set guifont=Monaco\ 11
" set guifontwide=WenQuanYi\ Zen\ Hei:h12:cGBK
" ..............
set bsdir=buffer
" ....
set enc=utf-8
" ......
set fenc=utf-8
" ...............
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" ........
syntax on
"....
set number
" .........
set hlsearch
" tab..
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
filetype plugin indent on
map <F7> :NERDTree<CR>
imap <C-S> <C-C>:w<CR>
let mapleader=","
inoremap jj <ESC>
colorschem desert

"zencoding not loading using pathogen

let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1
let Tlist_Show_One_File = 1           "不同时显示多个文件的tag，只显示当前文件的

let Tlist_Exit_OnlyWindow =  1      "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1  "taglist窗口右边显示
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

let g:NERDTree_title="[NERD Tree]" 

"let g:winManagerWindowLayout='TagList,BufExplorer'
let g:winManagerWindowLayout='NERDTree'
"设置winmanager的宽度，默认为25
" 
let g:winManagerWidth = 30


"在进入vim时自动打开winmanager
" 
 let g:AutoOpenWinManager = 1

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExpnflTabWrap = 1 " make tabs show complete (no broken on two lines)
"let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers
let g:miniBufExplCheckDupeBufs = 0 


function! NERDTree_Start()

	exec 'NERDTree'

endfunction

function! NERDTree_IsValid()

	return 1

endfunction

nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
