" behaviour {{{1

    filetype plugin indent on

    set autoindent
    set backspace=indent,eol,start  " backapsce behaviour
    set encoding=utf8
    set hidden                      " switch between unsaved buffers
    set nocompatible                " be iMproved, required
    set nostartofline               " Scroll to non-blank lines
    set path+=**                    " :find for files in subdirs

    " search {{{2
        set hlsearch            " highlights search
        set ignorecase
        set incsearch           " search begins without hitting enter
        set smartcase           " case insensitive if search word is lowercase
    " }}}

    " ruler and statusline {{{2
        set laststatus=2            " always show statusline
        set ruler
        set rulerformat=%l:%c
        set showcmd                 " show commands in bottom right corner
        set showmatch               " show matching brace temporarily
    " }}}

    " indentation {{{2
        set autoindent              " indent same as current line
        set expandtab
        set shiftwidth=4
        set softtabstop=4
    " }}}

    " timeout {{{2
        " timeout on keycodes, not on mappings
        set ttimeoutlen=0
        set timeoutlen=500
    "}}}

" }}}

" netrw settings {{{1
    let netrw_liststyle = 3
    let g:netrw_banner = 0
" }}}

" performance {{{1
    set ttyfast
    set ttyscroll=3
" }}}

" keybindings {{{1
"
    " scroll {{{2
        nnoremap <C-e> 5<C-e>
        nnoremap <C-y> 5<C-y>

    " }}}

    " universal bindings {{{2
        noremap ; :
        noremap <C-g> <C-[>
        noremap <silent><Leader>l :set hls!<CR>
        noremap Q gqip
        noremap <Leader>rc :e ~/.vimrc <CR>
        noremap <silent><Leader>r :set rnu!<CR>
        noremap <Leader>so :so %<CR>
    " }}}

" }}}

" colors and highlight {{{1
    syntax on
    set background=dark
" }}}

" vim: foldmethod=marker
