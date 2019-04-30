" ------------ Vundle Start ------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
" ------------Vundle End   --------------


"--------NERDTree config--------------- 
"打开目录树
map <F2> :NERDTreeToggle<CR>   
"打开当前目录
nmap ,t :NERDTreeFind<CR>
"忽略相关文件
let NERDTreeIgnore = ['\.pyc$','\.pyo$']
"o 关闭打开目录树下的目录


"------- Airline config -----------------
let g:airline_theme="dark" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件 
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#buffer_nr_show = 1 

"设置切换Buffer快捷键" 
nnoremap <C-tab> :bn<CR> 
nnoremap <C-s-tab> :bp<CR> 
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" 设置consolas字体"前面已经设置过
"set guifont=Consolas\ for\ Powerline\ FixedD:h11 
"if !exists('g:airline_symbols') 
" let g:airline_symbols = {} 
"endif 
" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
  


set tabstop=4	"tab长度为4空格
set expandtab	"tab自动转换为空格
set smartindent	"智能缩进
set autoindent
set nu		"显示行数
set laststatus=2	"显示文件名
set encoding=utf-8  
set showmatch
set scrolloff=5
set wrapmargin=2
set shiftwidth=4
syntax on
set linebreak
"set cursorcolumn  "高亮行，列"
set cursorline      

"vim多窗口调整大小，终端大小不变
"gnome <esc>可以使用alt. alt可以连着调整，esc调一次
map <esc>k :resize +3<CR>
" cmdline, statusline, min_win_line(2), tabline
map <expr> <esc>j winheight(0) <= (&lines-4) ? ':resize -3<CR>' : ' '
map <esc>h :vertical resize -3<CR>
map <esc>l :vertical resize +3<CR>






