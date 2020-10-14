set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=\ %t\                   " short file name
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=\ %{Fugitive()}\                   " file type
set statusline+=%=                          " right align
set statusline+=\ %y\                   " file type
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=\ %3p%%\                " percentage

  function! Fugitive()
    if exists('*FugitiveHead')
    let branch = FugitiveHead()
      return branch !=# '' ? ''.branch : ''
     endif
    return ''
  endfunction
