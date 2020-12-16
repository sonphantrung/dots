set path+=**					" Searches current directory recursively.
set mouse=a
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set numberwidth=2 " Thinner 
set noshowmode  " I have a statusline, no need to show anymore 
set nobackup                    " No auto backups
set nowritebackup
set noswapfile
set ignorecase
set smartcase
set background=dark
set encoding=utf-8
set number relativenumber       " Display line numbers
set clipboard+=unnamedplus       " Copy/paste between vim and other programs.
set termguicolors
colorscheme codedark
syntax enable
com!  -nargs=* -bar -bang -complete=dir  Lexplore  call netrw#Lexplore(<q-args>, <bang>0)


map <silent> <C-N> :Lexplore<CR>
" absolute width of netrw window
let g:netrw_winsize = -28

" do not display info on the top of window
let g:netrw_banner = 0

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" use the previous window to open file
let g:netrw_browse_split = 4

