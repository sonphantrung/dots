-- init.lua

require('orgmode').setup({
  org_agenda_files = {'~/.local/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/.local/org/refile.org',
})
