syntax on
filetype indent on  " per-filetype config
set number
set statusline=1
" disable tab functions to avoid reviewboard white space problem
"set tabstop=4
"set softtabstop=4   " set the softtab stops to 4 spaces
"set shiftwidth=4    " set the automatic shiftwidth to 4 spaces
"set expandtab
"set smarttab
"set autoindent

let perl_fold=1

" mainly for putty
if &term =~ "xterm"
    "256 color --
    set t_Co=256
    " restore screen after quitting
    set t_ti=ESC7ESC[rESC[?47h " \t_te=ESC[?47lESC8
    if has("terminfo")
        let &t_Sf="\ESC[3%p1%dm"
        let &t_Sb="\ESC[4%p1%dm"
    else
        let &t_Sf="\ESC[3%dm"
        let &t_Sb="\ESC[4%dm"
     endif
endif

" highlight whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
