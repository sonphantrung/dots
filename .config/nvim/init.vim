source ~/.config/nvim/vimplug.vim

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

source ~/.config/nvim/coconf.vim
source ~/.config/nvim/lightlineconf.vim
source ~/.config/nvim/vimfzf.vim
source ~/.config/nvim/gut.vim

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
