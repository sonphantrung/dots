map <F8> :setlocal spell! spelllang=en_gb<CR>
map <F7> :Goyo<CR>
set path+=**                    " Searches current directory recursively.
set mouse=a
set wildmenu                    " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nowrap
set numberwidth=2 " Thinner 
set noshowmode  " I have a status line, no need to show any more
set nobackup                    " No auto backups
set nowritebackup
set noswapfile
set ignorecase
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
set smartindent
set smartcase
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set encoding=utf-8
set undofile
set undodir=/tmp
set number relativenumber       " Display line numbers
set clipboard+=unnamedplus       " Copy/paste between Vim and other programs.
set termguicolors
colorscheme gruvbox
syntax enable
hi SignColumn guibg=none
hi Normal guibg=none
hi LineNr guibg=none
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType startify call glyph_palette#apply()
augroup END
