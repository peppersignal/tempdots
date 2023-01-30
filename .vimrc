set tabstop=4
set shiftwidth=4
set scrolloff=12 "at least 12 lines visible above and below the cursor
set expandtab
set number
set nowrap
set hidden "edit multiple buffers at a time without saving
syntax on
filetype indent on
filetype plugin indent on

" Key bindings
let mapleader=' '

" Auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

"" Simplify pattern searching function! CCR()
function! CCR()
    let cmdline = getcmdline()

    if cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
        return "\<CR>:"
    else
        return "\<CR>"
    endif
endfunction
nnoremap <Leader>g :g//#<Left><Left>
cnoremap <expr> <CR> CCR()


"" Navigate between buffers
nnoremap <Leader>b :ls<CR>:b

"" Quit
nnoremap <Leader>qq :q<CR>

"" Save
nnoremap <Leader>ww :w<CR>
    
" Plugin Management
call plug#begin()
Plug 'sainnhe/gruvbox-material'
call plug#end()

" Colorscheme
set background=dark
colorscheme gruvbox-material

" Cursor
set guicursor=n-i-c:ver30-blinkon400-blinkoff250,v:block
augroup reset_cursor_shape
    au!
    autocmd VimEnter * normal! :startinsert :stopinsert
    autocmd VimEnter * redraw!
augroup END




