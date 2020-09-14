
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/vim-emoji'
Plug 'scrooloose/nerdtree'                         " Nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
Plug 'itchyny/lightline.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()
set path+=**					" Searches current directory recursively.
set mouse=a
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set nowritebackup
set noswapfile
set ignorecase
set smartcase
set encoding=utf-8
set number relativenumber       " Display line numbers
set noshowmode
set clipboard+=unnamedplus       " Copy/paste between vim and other programs.
set termguicolors
colorscheme nord
syntax enable

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch':  'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }
  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction


let g:Hexokinase_highlighters = ['backgroundfull']

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_refreshEvents = ['InsertLeave', 'TextChanged']

autocmd vimenter * HexokinaseTurnOn

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

" Markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "surf"     " Uses surf for preview
map <Leader>d :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>s :InstantMarkdownStop<CR>      " Kills the preview

" Fugitive
map <C-u> :G add -u
map <C-p> :G push
