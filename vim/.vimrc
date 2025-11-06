syntax on
set number
set fileformat=unix
set encoding=utf-8
set nowrap

" For python development
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=79

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Enable True Color (24-bit)
if has('termguicolors')
    set termguicolors
endif

" vim-plug
call plug#begin()
" Linting
Plug 'dense-analysis/ale'
" Files
Plug 'preservim/nerdtree'
" Colors
Plug 'morhetz/gruvbox'
" Extra status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git commands
Plug 'tpope/vim-fugitive'
" Python
Plug 'davidhalter/jedi-vim'
call plug#end()

" Set colorscheme
set background=dark
colorscheme gruvbox

" Airline
let g:airline_theme='blood_red'
let g:airline#extensions#tabline#enabled = 1 
let g:airline_statusline_ontop=1

" Nerdtree
let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTreeToggle<CR>

" ALE
let g:ale_linters = {'python': ['flake8', 'mypy', 'pylint', 'ruff']}

" Terminal
nnoremap <C-t> :rightbelow vertical terminal fish<CR>

" Jedi-Vim
let g:jedi#completions_enabled = 1 
let g:jedi#show_call_signatures = "1" 
let g:jedi#use_tabs_not_buffers = 1 


" Python run/test
autocmd FileType python nnoremap <buffer> <F5> :!clear; python3 %<CR>
autocmd FileType python inoremap <buffer> <F5> <Esc>:!clear; python3 %<CR>
autocmd FileType python vnoremap <buffer> <F5> <Esc>:!clear; python3 %<CR>

autocmd FileType python nnoremap <buffer> <F6> :!clear; pytest %<CR>
autocmd FileType python inoremap <buffer> <F6> <Esc>:!clear; pytest %<CR>
autocmd FileType python vnoremap <buffer> <F6> <Esc>:!clear; pytest %<CR>

autocmd FileType python nnoremap <buffer> <F7> :w<CR>:!clear; black --line-length 79 %<CR>:e!<CR>
autocmd FileType python inoremap <buffer> <F7> <Esc>:w<CR>:!clear; black --line-length 79 %<CR>:e!<CR>
autocmd FileType python vnoremap <buffer> <F7> <Esc>:w<CR>:!clear; black --line-length 79 %<CR>:e!<CR>


