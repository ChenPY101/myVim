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
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'chrisbra/changesPlugin'   "显示vim文档那些行被修改
Plugin 'nathanaelkane/vim-indent-guides'  "显示缩进线

call vundle#end()
filetype plugin indent on
" required" 常用命令
" :PluginList - 查看已经安装的插件
" :PluginInstall - 安装插件
" :PluginUpdate - 更新插件
" :PluginSearch - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean - 删除插件，把安装插件对应行删除，然后执行这个命令即可
" ------------Vundle End   --------------


" --------NERDTree config--------------- 
" 打开目录树
map <F2> :NERDTreeToggle<CR>   
" 打开当前目录
nmap ,t :NERDTreeFind<CR>
" 忽略相关文件
let NERDTreeIgnore = ['\.pyc$','\.pyo$']
" o 关闭打开目录树下的目录


" ------- Airline config -----------------
let g:airline_theme="dark" 

" 这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

" 打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件 
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#buffer_nr_show = 1 

" 设置切换Buffer快捷键" 
nnoremap <C-tab> :bn<CR> 
nnoremap <C-s-tab> :bp<CR> 
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" 设置consolas字体"前面已经设置过
" set guifont=Consolas\ for\ Powerline\ FixedD:h11 
" if !exists('g:airline_symbols') 
" let g:airline_symbols = {} 
" endif 

" old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'


" ----------markdown---------------
" for normal mode
nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <F9> <Plug>StopMarkdownPreview


"  -------- ChangesPlugin  文件显示修改痕迹 --------
let g:changes_autocmd=1
let g:changes_use_icons = 1
" let g:changes_respect_SignColumn = 1
let g:changes_sign_text_utf8 = 1
" let g:changes_linehi_diff = 0
" hi ChangesSignTextAdd ctermbg=yellow ctermfg=black guibg=green
" hi ChangesSignTextDel ctermbg=white  ctermfg=black guibg=red
" hi ChangesSignTextCh  ctermbg=black  ctermfg=white guibg=blue




" -------- vim-indent-guides 显示缩进线 --------
let g:indent_guides_enable_on_vim_startup = 1    "set indent guides enabled by default
let g:indent_guides_auto_colors = 0                      "Setting custom indent colors
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_space_guides = 1
let g:indent_guides_tab_guides = 0
 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgray
 
" hi IndentGuidesOdd  guibg=red   ctermbg=0
" hi IndentGuidesEven guibg=green   ctermbg=8







" -------- 非插件类 ------------
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
set scrolloff=5     "距离顶部底部的行数"

set textwidth=80  "设置行宽 一行显示多少字符"
"set wrap          "自动折行
set nowrap        "关闭自动折行
"set wrapmargin=2  "折行处与编辑窗口右边缘之间空的字符数
set linebreak     "只有遇到指定的符号才折行，如空格，连词号等。不在单词内折行"

set cursorcolumn  "高亮列"
set cursorline    "高亮行" 
set showmode      "底部显示处于命令模式还是插入模式"
set mouse=a      "支持使用鼠标"

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


"剪切板
"无法使用系统的剪贴板时，可能时少装了几个东西
"sudo apt-get install vim vim-scripts vim-gtk vim-gnome
"vim --version | grep clipboard 查看
"clipboard 和  xterm_clipboard 前为+
"+y 复制到系统剪贴板
"+p 粘贴
"+gp 粘贴并光标移动到黏贴内容后
"nmap <c-v> "+gp
"nmap <c-c> "+y
"但是<c-v>为常用的块命令，修改成 ,
"即在normal模式下  ,+v  为粘贴
let mapleader=","  
nmap <leader>v "+gp
nmap <leader>c "+y
