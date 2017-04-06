""""""""""""""""""
"*****Vundle*****"
""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'a.vim'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rizzatti/dash.vim'
Plugin 'rking/ag.vim'
Plugin 'Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'valloric/youcompleteme'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Cpp11-Syntax-Support'
"Plugin 'fatih/vim-go'
"Plugin 'mizuchi/stl-syntax'
"Plugin 'Shougo/neocomplete'
"Plugin 'stanangeloff/php.vim'
"Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'taglist.vim'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""
"*****mapping*****"
"""""""""""""""""""
let mapleader=";"
nnoremap <silent> <F2>    :NERDTreeToggle<CR>
nnoremap <silent> <F3>    :TagbarToggle<CR>
nnoremap <silent> <F4>    :A<CR>
nnoremap <silent> <F5>    :CtrlP<CR>
nnoremap <silent> <F6>    :Ag '<cword>' .<CR>
nnoremap <silent> <F8>    :!ctags -R .<CR>
nnoremap <silent> <leader>h :bp<CR>
nnoremap <silent> <leader>l :bn<CR>
map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"跳转相关
"g]
"ctrl+]
"ctrl+t
"ctrl+i
"ctrl+o
"注释
"<leader>cb
"<leader>cu

"""""""""""""""""
"*****ctrlp*****"
"""""""""""""""""
set wildignore=*/.git/*,*/.svn/*,*/tags
let g:ctrlp_show_hidden=1

""""""""""""""""""""""""""""""""""
"*****flazz/vim-colorschemes*****"
""""""""""""""""""""""""""""""""""
set background=dark
"lucius molokai solarized desert zenburn
"zenburn的搜索高亮不明显
color desert

""""""""""""""""""""""""
"*****rking/ag.vim*****"
""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ag.vim
let g:ag_highlight=1

"""""""""""""""""
"*****ctags*****"
"""""""""""""""""
set tags=tags;/

"""""""""""""""""""""""""""""
"*****bling/vim-airline*****"
"""""""""""""""""""""""""""""
set laststatus=2
let g:airline_theme="molokai"
"let g:airline_theme="solarized"
let g:airline_powerline_fonts                   = 1
let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#whitespace#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""
"*****octol/vim-cpp-enhanced-highlight*****"
""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight           = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight              = 1
let c_no_curly_error                      = 1

"""""""""""""""""""""""""""""
"*****mhinz/vim-signify*****"
"""""""""""""""""""""""""""""
let g:signify_vcs_list = [ 'git' ]

""""""""""""""""""""""""""""""""""""""""""
"*****ntpeters/vim-better-whitespace*****"
""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * StripWhitespace

"""""""""""""""""""""""
"*****taglist.vim*****"
"""""""""""""""""""""""
let Tlist_Show_One_File           = 1
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Use_Right_Window        = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"""""""""""""""""""""""""""""""
"*****scrooloose/nerdtree*****"
"""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden       = 1
let NERDTreeIgnore           = ['\.pyc$', '.DS_Store', '.sconsign.dblite', '.svn']
let NERDTreeWinSize          = 32
"let NERDTreeMinimalUI        = 1
let NERDTreeAutoDeleteBuffer = 1
"autocmd vimenter * NERDTree

""""""""""""""""""""""""""""""""
"*****scrooloose/syntastic*****"
""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_wq          = 1
let g:syntastic_cpp_compiler         = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"let g:syntastic_check_on_open            = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list            = 1

"""""""""""""""""""""""""""""""""""""""""""
"*****nathanaelkane/vim-indent-guides*****"
"""""""""""""""""""""""""""""""""""""""""""
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2

"""""""""""""""""""""""""""""
"*****majutsushi/tagbar*****"
"""""""""""""""""""""""""""""
let tarbar_width=32
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
  \ 'kinds' : [
      \ 'c:classes:0:1',
      \ 'd:macros:0:1',
      \ 'e:enumerators:0:0',
      \ 'f:functions:0:1',
      \ 'g:enumeration:0:1',
      \ 'l:local:0:1',
      \ 'm:members:0:1',
      \ 'n:namespaces:0:1',
      \ 'p:functions_prototypes:0:1',
      \ 's:structs:0:1',
      \ 't:typedefs:0:1',
      \ 'u:unions:0:1',
      \ 'v:global:0:1',
      \ 'x:external:0:1'
  \ ],
  \ 'sro'        : '::',
  \ 'kind2scope' : {
      \ 'g' : 'enum',
      \ 'n' : 'namespace',
      \ 'c' : 'class',
      \ 's' : 'struct',
      \ 'u' : 'union'
  \ },
  \ 'scope2kind' : {
      \ 'enum'      : 'g',
      \ 'namespace' : 'n',
      \ 'class'     : 'c',
      \ 'struct'    : 's',
      \ 'union'     : 'u'
  \ }
\ }

""""""""""""""""""""""""""""""""""""
"*****scrooloose/nerdcommenter*****"
""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims            = 1
let g:NERDCompactSexyComs        = 1
let g:NERDDefaultAlign           = 'left'
let g:NERDAltDelims_java         = 1
let g:NERDCommentEmptyLines      = 1
let g:NERDTrimTrailingWhitespace = 1

""""""""""""""""""""""""""""""""""
"*****valloric/youcompleteme*****"
""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf                        = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments                      = 1
let g:ycm_min_num_of_chars_for_completion           = 1
let g:ycm_seed_identifiers_with_syntax              = 1
"let g:ycm_cache_omnifunc                      = 0

""""""""""""""""""""""""
"*****fatih/vim-go*****"
""""""""""""""""""""""""
"let g:go_highlight_functions         = 1
"let g:go_highlight_methods           = 1
"let g:go_highlight_structs           = 1
"let g:go_highlight_interfaces        = 1
"let g:go_highlight_operators         = 1
"let g:go_highlight_build_constraints = 1
"let g:go_fmt_command                 = "goimports"

""""""""""""""""""""""""""""""
"*****Shougo/neocomplete*****"
""""""""""""""""""""""""""""""
"let g:neocomplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""
"*****shawncplus/phpcomplete.vim*****"
""""""""""""""""""""""""""""""""""""""
"let g:phpcomplete_relax_static_constraint      = 1
"let g:phpcomplete_complete_for_unknown_classes = 1
"let g:phpcomplete_search_tags_for_variables    = 1
"let g:phpcomplete_parse_docblock_comments      = 1

""""""""""""""""""""""""""""""""
"*****stanangeloff/php.vim*****"
""""""""""""""""""""""""""""""""
"let g:php_syntax_extensions_enabled = 1
""let b:php_syntax_extensions_enabled = 1
"function! PhpSyntaxOverride()
"    hi! def link phpDocTags  phpDefine
"    hi! def link phpDocParam phpType
"endfunction
"augroup phpSyntaxOverride
"    autocmd!
"    autocmd FileType php call PhpSyntaxOverride()
"augroup END

""""""""""""""""""""""""""""""""
"*****jiangmiao/auto-pairs*****"
""""""""""""""""""""""""""""""""
"let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}
"au Filetype FILETYPE let b:AutoPairs = {"(": ")"}


""""""""""""""""""
"*****global*****"
""""""""""""""""""
"set ofu=syntaxcomplete
set ttyfast
set wrapscan
set report=0
set synmaxcol=200

""" 打开文件跳转到最后修改处
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""" 重定向讨厌的*.swp等文件
if empty(glob('~/.vim'))
    silent !mkdir ~/.vim
endif
if empty(glob('~/.vim/backup'))
    silent !mkdir ~/.vim/backup
endif
if empty(glob('~/.vim/swap'))
    silent !mkdir ~/.vim/swap
endif
if empty(glob('~/.vim/undo'))
    silent !mkdir ~/.vim/undo
endif
if empty(glob('~/.vim/viminfo'))
    silent !mkdir ~/.vim/viminfo
endif
set backup
set backupdir=~/.vim/backup//
set backupext=-vimbackup
set backupskip=
set directory=~/.vim/swap//
set updatecount=100
set undofile
set undodir=~/.vim/undo//
set viminfo='100,n$HOME/.vim/viminfo'

""" 非INSERT模式时高亮显示光标所在行
set cursorline
autocmd InsertEnter * :set nocursorline
autocmd InsertLeave * :set cursorline

""" 搜索忽略大小写
set ignorecase
""" 一边输入一边搜索
set incsearch
""" 高亮搜索
set hlsearch

""" 高亮
syntax on
""" 行号
set nu
""" 显示换行格挡符
set cc=120
"set tw=120
""" 懒重绘
set lazyredraw
""" j,k上下移动至顶部、尾部时预留3行
if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline
set foldmethod=syntax
set nofoldenable

""" 对齐
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd FileType cc,hpp,javascript,html,css set tabstop=2
autocmd FileType cc,hpp,javascript,html,css set shiftwidth=2
autocmd FileType cc,hpp,javascript,html,css set softtabstop=2

""" 切换当前目录
set autochdir
""" 退格键模式
set backspace=2
""" 鼠标模式，切换到VISUAL MODE时可以用滚轮上下滚动
set mouse=v

""" 文件编码
set fileencodings=utf-8,gb18030

""" 自定义一些高亮关键字
autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|FIXME\|NOTICE\|WARN\)')
autocmd Syntax * call matchadd('Todo', '\W\zs\(CHEFTODO\|CHEFFIXME\|CHEFERASEME\|CHEFTMP\)')
autocmd Syntax * call matchadd('Todo', '\W\zs\(@file\|@deps\|@author\|@desc\|@brief\|@function\|@param\|@return\|@notice\)')

""" 根据文件类型自动插入文件头部
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

function HeaderBash()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

function HeaderCpp()
    call setline(1, "/**")
    call  append(1, " * @file   ".expand("%")."/xxx")
    call  append(2, " * @deps   xxx")
    call  append(3, " *")
    call  append(4, " * @author")
    call  append(5, " *   chef <191201771@qq.com>")
    call  append(6, " *     -created ".strftime("%Y-%m-%d %H:%M:%S"))
    call  append(7, " *     -initial release xxxx-xx-xx")
    call  append(8, " *")
    call  append(9, " * @brief")
    call  append(10, " *   xxx")
    call  append(11, " *")
    call  append(12, " */")
    call  append(13, "")
    call  append(14, "#ifndef xxx")
    call  append(15, "#define xxx")
    call  append(16, "")
    call  append(17, "namespace xxx {")
    call  append(18, "")
    call  append(19, "class xxx {")
    call  append(20, "  public:")
    call  append(21, "}; /// class xxx")
    call  append(22, "")
    call  append(23, "} /// namespace xxx")
    call  append(24, "")
    call  append(25, "#endif /// xxx")

    normal G
    normal o
endf
autocmd bufnewfile *.h,*.hpp call HeaderCpp()