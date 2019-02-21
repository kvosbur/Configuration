" takes advantage of vim improvements on vi
set nocompatible

" make backspace work as expected
set backspace=eol,start,indent

syntax on

" search as you type
set incsearch

" disable search result highlighting
"set nohls

" enable search result highlighting
set hlsearch

" Set line numbers on
set nu

" Fixes common typos
"  correct :W to :w #typo
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
"  correct :Q to :q #typo
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

set pastetoggle=<F11>

color desert

set tabstop=4
set shiftwidth=4
set expandtab

" <Ctrl-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

set nohlsearch
" add auto completion of brackets
"":inoremap { {}<Esc>:let leavechar="}"<CR>i
"":inoremap ( ()<Esc>:let leavechar=")"<CR>i
"":inoremap [ []<Esc>:let leavechar="]"<CR>i
