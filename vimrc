"curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 取消备份
set nobackup
set noswapfile

" 显示行号
set nu

" 显示光标当前位置
set ruler

" 设置缩进
set cindent
set tabstop=4
set shiftwidth=4

" 主题
syntax enable
set background=dark
"colorscheme solarized

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"# o 打开关闭文件或目录
"# e 以文件管理的方式打开选中的目录
"# t 在标签页中打开
"# T 在标签页中打开，但光标仍然留在 NERDTree
"# r 刷新光标所在的目录
"# R 刷新当前根路径
"# X 收起所有目录
"# p 小写，跳转到光标所在的上一级路径
"# P 大写，跳转到当前根路径
"# J 到第一个节点
"# K 到最后一个节点
"# I 显示隐藏文件
"# m 显示文件操作菜单
"# C 将根路径设置为光标所在的目录
"# u 设置上级目录为根路径
"# ctrl + w + w 光标自动在左右侧窗口切换
"# ctrl + w + r 移动当前窗口的布局位置
"# :tabc 关闭当前的 tab
"# :tabo   关闭所有其他的 tab
"# :tabp   前一个 tab
"# :tabn   后一个 tab
"# gT      前一个 tab
"# gt      后一个 tab

" 代码，引号，路径补全
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" 语法高亮，检查
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'

let g:ale_linters = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1

let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '▶'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" 文件，代码搜索
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'

" 加强版注释栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='papercolor'

" 代码注释
Plug 'scrooloose/nerdcommenter'

"# <leader>cc // 注释
"# <leader>cm 只用一组符号注释
"# <leader>cA 在行尾添加注释
"# <leader>c$ /* 注释 */
"# <leader>cs /* 块注释 */
"# <leader>cy 注释并复制
"# <leader>c<space> 注释/取消注释
"# <leader>ca 切换　// 和 /* */
"# <leader>cu 取消注释

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
            \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
            \ 'less': { 'left': '/**', 'right': '*/' }
        \ }
call plug#end()
