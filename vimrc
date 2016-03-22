"Use Vim settings, rather then VI settings
set nocompatible

"activate pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

let g:gitgutter_max_signs=9000

" Move plugin - use control+j to move a line down, or control+k to move up
let g:move_key_modifier='C'

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>' " control+N to select next word under your cursor/selection/
let g:multi_cursor_skip_key='<C-x>' " control+X to skip a selection
let g:multi_cursor_prev_key='<C-p>' " control+P to go back
let g:multi_cursor_quit_key='<Esc>'   " escape to quit

" Emmet
let g:user_emmet_expandabbr_key='<tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" NERDTree
map <C-e> :NERDTreeToggle<CR>

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
set guifont=Anonymous\ Pro\ for\ Powerline " make sure to escape the spaces in the name properly
let g:airline#extensions#tabline#enabled=1

" Syntastic
" set statusline+=%warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_loc_list_height=5
" let g:syntastic_auto_loc_list=1
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_auto_jump=0

" map <C-d> :SyntasticToggleMode<CR>


" Theme colors: Badwolf - solarized
" let g:solarized_termcolors=256 " solarized
" set background=dark " solarized
colorscheme badwolf

" Change mapleader
let mapleader="\<Space>"
" Copy & paste to system clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Control P
let g:ctrlp_working_path_mode='a'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git,*/node_modules " ignore certain files for quicker control p search

" No plugin settings
set autoindent                 " Copy indent from last line when starting new line.
set autoread                   " make vim read the file when it changes outside of vim
set backspace=indent,eol,start " allowing backspacing over everything in insert mode
set cursorline                 " Highlight current line
set encoding=utf-8 nobomb      " BOM often causes trouble
set mouse=a                    " Enable mouse in all modes
set noerrorbells               " Disable error bells.
set visualbell                 " Use visual bell instead of audible bell (annnnnoying)
set nowrap                     " Do not wrap lines
set number                     " Enable line numbers.
" Set relative line numbers
set relativenumber " Use relative line numbers. Current line is still in status bar.
au BufReadPost,BufNewFile * set relativenumber
" set splitbelow " New window goes below
" set splitright " New window goes right

" Indenting
set tabstop=4
set shiftwidth=4 " The # of spaces for indenting.
"set noexpandtab " do not expand tabs to spaces
set expandtab
if !exists("*TabToggle()")
    function TabToggle()
        if &expandtab
            set noexpandtab
        else
            set expandtab
        endif
    endfunction
endif
" space+tab to switch between tab or space indentation
nmap <leader><tab> mz:execute TabToggle()<CR>'z

" Better split switching (Space-j, Space-k, Space-h, Space-l)
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
"
" Toggle show tabs and trailing spaces (,c)
set list
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Close Quickfix window (,qq)
map <leader>qq :close<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Turn off search highlight
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
nmap <silent> <leader>/ :nohlsearch<CR>

" Go to next line in insert mode
imap <C-o> <esc>o

" Stop command history shortcut
map q: :q

