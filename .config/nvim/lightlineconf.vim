
" Lightline config

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'gitbranch': 'LightlineFugitive',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'cocstatus': 'coc#status'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction 

  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

  function! LightlineReadonly()
    return &readonly && &filetype !=# 'help' ? '' : ''
  endfunction

  function! LightlineFugitive()
    if exists('*FugitiveHead')
    let branch = FugitiveHead()
      return branch !=# '' ? ''.branch : ''
     endif
    return ''
  endfunction

  " Use auocmd to force lightline update.
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
