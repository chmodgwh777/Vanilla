" 256色
set t_Co=256
" 设置透明
syntax enable
" 设置vi与vim兼容
set nocompatible
" 设置使vim识别不同的文件格式
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" 设置使vim能用鼠标操作
set mouse=a
" 设置字符编码
set encoding=utf-8
" 使配色更加兼容你的终端
let &t_ut=''
" 设置缩进距离
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
" 设置空格的显示
set list
set listchars=tab:▸\ ,trail:▫
set tw=0
set indentexpr=
" 退格键到行首后自动跳转到上行行尾
set backspace=indent,eol,start
" 收起代码
set foldmethod=indent
set foldlevel=99
" 设置终端的光标在不同模式下用不同的样式,实测Konsole可用
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" 状态栏等于２？？？
set laststatus=2
" vim执行的外部命令会在当前目录下执行
set autochdir
" 关闭文件又打开光标会自动回到关闭前的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" 设置leader键为空格
let mapleader=" "
" 设置行号
set number
" 设置更好的行号
set relativenumber
" 设置光标线
set cursorline
" 自动换行
set wrap
" 显示命令
set showcmd
" tab多选项菜单
set wildmenu
" 设置搜索关键词高亮
set hlsearch
exec "nohlsearch"
" 设置搜索输入时高亮
set incsearch
" 搜索时忽略大小写
set ignorecase 
" 只能搜索忽略大小写
set smartcase

" 搜索跳转结果改为=/-并且使搜索结果在屏幕中间
noremap = nzz
noremap - Nzz

" 大写JKHL重复五次执行
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
" 设置取消高亮
noremap <LEADER><CR> :nohlsearch<CR>

" 设置光标回到行首
noremap <LEADER>a 0

" 设置光标回到行尾
noremap <LEADER>e $

" 快速插入下行但不进入写入模式
noremap <LEADER>o o<ESC>

" 快速插入上行但不进入写入模式
noremap <LEADER>O O<ESC>


" 取消s删除字符的功能
map s <nop>

" 快速保存
map S :w<CR>

" 按大写Q直接退出
map Q :q<CR>

" R快速source vimrc
map R :source ~/.config/nvim/init.vim<CR>

"分屏操作
"向右分屏
map <LEADER>l :set splitright<CR>:vsplit<CR>
"向左分屏
map <LEADER>h :set nosplitright<CR>:vsplit<CR>
"向上分屏
map <LEADER>k :set nosplitbelow<CR>:split<CR>
"向下分屏
map <LEADER>j :set splitbelow<CR>:split<CR>
"光标移动至左分屏
map sh <C-w>h
"光标移动至右分屏
map sl <C-w>l
"光标移动至下分屏
map sj <C-w>j
"光标移动至上分屏
map sk <C-w>k
"增加纵向分屏大小
map <up> :res +5<CR>
"减少纵向分屏大小
map <down> :res -5<CR>
"减少横向分屏大小
map <left> :vertical resize-5<CR>
"增加横横分屏大小
map <right> :vertical resize+5<CR>
"将分屏设置为横向分屏
map <LEADER>H <C-w>t<C-w>H
"将分屏设置为纵向分屏
map <LEADER>K <C-w>t<C-w>K

"标签
"打开新标签
map tn :tabe<CR>
" 跳转至上一个标签
map th :-tabnext<CR>
" 跳转至下一个标签
map tl :+tabnext<CR>
  " 关闭当前标签
map td :tabclose<CR>

" sudo vim
map <LEADER>sudo :w !sudo tee %

" 打开terminal
map <LEADER>T :terminal<CR>

"插件安装vim-plug
call plug#begin('~/.vim/plugged')
Plug 'endel/vim-github-colorscheme'
Plug 'altercation/vim-colors-solarized'
Plug 'connorholyday/vim-snazzy'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Rust
Plug 'rust-lang/rust.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'rust-lang/rustfmt'
Plug 'mattn/webapi-vim'

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" menu
Plug 'mhinz/vim-startify'

" 自动补全符号
Plug 'Raimondi/delimitMate'

Plug 'davidhalter/jedi-vim'



call plug#end()

" seoul256 (dark):
" Range:   233 (darkest) ~ 239 (lightest)
" Default: 237
let g:seoul256_background = 233
colo seoul256


color gruvbox


" colo snazzy

" 插件配置

" ==== Rust
let g:rust_clip_command = 'xclip -selection clipboard'

" ==== Rainbox
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]
" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END<Paste>

" ==== NERDTree
map ff :NERDTreeToggle<CR>

" ==== NERDTree-git

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ==== You Complete ME
" 跳转至其他的声明
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 跳转至文档
nnoremap g/ :YcmCompleter GetDoc<CR>
" 获取类型
nnoremap gt :YcmCompleter GetType<CR>
" 获取参考
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"

" ==== ale
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" ==== TagList
map <silent> T :TagbarOpenAutoClose<CR>

" ==== MarkdownPreview
nmap <LEADER>mp :MarkdownPreview<CR>
let g:mkdp_browser = 'firefox'

" ==== vim-table-mode

map <LEADER>tm :TableModeToggle<CR>

" ==== vim-indent-guide
let g:indent_guides_guide_size = 0
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 0
autocmd WinEnter * silent! unmap <LEADER>ig

" ====Goyo
map <LEADER>gy :Goyo<CR>

" ==== vim-signiture
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" === Undotree
let g:undotree_DiffAutoOpen = 0
map <LEADER>ut :UndotreeToggle<CR>


if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
