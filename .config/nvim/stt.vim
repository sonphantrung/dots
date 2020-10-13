set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=\ %{Fugitive()}\                   " file type
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %{MyFiletype()}\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage


function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction 


  function! Fugitive()
    if exists('*FugitiveHead')
    let branch = FugitiveHead()
      return branch !=# '' ? ''.branch : ''
     endif
    return ''
  endfunction
