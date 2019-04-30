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


syntax on      "语法高亮

set smarttab
set tabstop=4	"tab长度为4空格
set shiftwidth=4
set expandtab	"tab自动转换为空格
set smartindent	"为C提供自动缩进
set autoindent  "继承前一行缩进
set nu		"显示行数
"set relativenumber  "显示光标当前多行号，其他都为该行的相对行号
set laststatus=2	"显示状态行
set encoding=utf-8  
set showmatch      "光标遇到括号，自动高亮另一个
set scrolloff=5     "距离顶部底部的行数

set textwidth=80  "设置行宽 一行显示多少字符
set wrap          "自动折行
"set nowrap        "关闭自动折行
"set wrapmargin=2  "折行处与编辑窗口右边缘之间空的字符数
set linebreak     "只有遇到指定的符号才折行，如空格，连词号等。不在单词内折行

set cursorcolumn  "高亮列
set cursorline    "高亮行
set showmode      "底部显示处于命令模式还是插入模式
set mouse=a      "支持使用鼠标

set hlsearch    "搜索时 高亮匹配结果
set incsearch   "搜索时 每输入一个字符，自动跳到第一个匹配结果
set ignorecase  "搜索时忽略大小写

"set spell spelllang=en_us   "英语拼写检查 中文会高亮

"set nobackup    "不创建备份文件
"set noswapfile   "不创建交换文件
"set undofile   "保留撤销历史
"设置备份文件 交换文件 撤销历史文件多保存路径
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//

set history=100  "记住多少次历史操作

"命令模式下，底部操作指令Tab补全
set wildmenu
set wildmode=longest:list,full

set autoread    "文件监视，如果在编辑过程中文件发生变化，如有其他编辑器编辑，会提示



"vim多窗口调整大小，终端大小不变
"gnome <esc>可以使用alt. alt可以连着调整，esc调一次
map <esc>k :resize +3<CR>
" cmdline, statusline, min_win_line(2), tabline
map <expr> <esc>j winheight(0) <= (&lines-4) ? ':resize -3<CR>' : ' '
map <esc>h :vertical resize -3<CR>
map <esc>l :vertical resize +3<CR>






