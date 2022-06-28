set nocompatible              " 不与 Vi 兼容（采用 Vim 自己的操作命令）
syntax on  " 打开语法高亮。自动识别代码，使用多种颜色显示
set showmode " 在底部显示，当前处于命令模式还是插入模式。
set mouse=a "支持使用鼠标。
set encoding=utf-8 "使用 utf-8 编码
set t_Co=256 "启用256色
filetype indent on "开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
set ts=4
set expandtab
set autoindent " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
set listchars=tab:>-,trail:-
set list
set number "显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set cursorline "光标所在的当前行高亮。

set showmatch "光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set hlsearch "搜索时，高亮显示匹配结果。

set noswapfile "不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp

set undofile "打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。

set noerrorbells "出错时，不要发出响声

set history=1000 "Vim 需要记住多少次历史操作。


"vim-plug 插件管理
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

"python 代码检查
Plug 'W0rp/ale'
let g:ale_linters = {'python': ['flake8']}

Plug 'Yggdroot/indentLine' "缩进指示线，由纯字符实现
let g:indentLine_char='┆'
let g:indentLine_enabled = 0

Plug 'jiangmiao/auto-pairs' "括号和引号自动补全
Plug 'tell-k/vim-autopep8' " python pep8 自动格式
Plug 'scrooloose/nerdcommenter' "方便的写注释

Plug 'maralla/completor.vim'
let g:completor_python_binary = '/home/fei/home/anaconda3/bin/python'
" Use Tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

Plug 'pixelneo/vim-python-docstring'
let g:python_style = 'google'

Plug 'Vimjas/vim-python-pep8-indent'
let g:python_pep8_indent_hang_closing=1

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
let g:pymode = 0

Plug 'https://github.com/alpertuna/vim-header'
let g:header_field_author = 'Fei Gao'
let g:header_field_author_email = 'feigao.sc@gmail.com'
map <F4> :AddHeader<CR>

" Initialize plugin system
call plug#end()
