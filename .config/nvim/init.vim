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
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-emoji'
Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
Plug 'itchyny/lightline.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

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
colorscheme onedark
syntax enable

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
augroup END

source ~/.config/nvim/coconf.vim
source ~/.config/nvim/lightlineconf.vim

let g:fern#renderer = "nerdfont"
let g:cursorhold_updatetime = 100
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

" Markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "surf"     " Uses surf for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview
