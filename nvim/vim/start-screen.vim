" Where sessions will be stored
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.lua' },
            \ { 'z': '~/.zshrc' },
            \ { 'x': '~/.zprofile' },
            \ ]

let g:startify_session_delete_buffers = 1

" Autoload session if exists
let g:startify_session_autoload = 1

" Keeps root of CWD
let g:startify_change_to_vcs_root = 1

" Update session
let g:startify_session_persistence = 1

" Remove Empy buffer and Quit lables
let g:startify_enable_special = 0

let g:webdevicons_enable_startify = 1

" Add icons before each line
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Cool headers
" let g:startify_custom_header = [
"   \ '   __  __     ______     ______     __  __     __  __     ______   ',
"   \ '  /\ \/ /    /\  __ \   /\  ___\   /\ \_\ \   /\ \_\ \   /\___  \  ',
"   \ '  \ \  _"-.  \ \  __ \  \ \ \____  \ \  __ \  \ \____ \  \/_/  /__ ',
"   \ '   \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \/\_____\   /\_____\',
"   \ '    \/_/\/_/   \/_/\/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/',
"   \]

let g:startify_custom_header = [
  \ '  ______     ______     __   __     _____        ______     ______     ______   ______   ______     ______    ',
  \ ' /\  ___\   /\  ___\   /\ "-.\ \   /\  __ \     /\  ___\   /\  __ \   /\  ___\ /\  ___\ /\  ___\   /\  ___\   ',
  \ ' \ \___  \  \ \  __\   \ \ \-.  \  \ \ \/\ \    \ \ \____  \ \ \/\ \  \ \  __\ \ \  __\ \ \  __\   \ \  __\   ',
  \ '  \/\_____\  \ \_____\  \ \_\\"\_\  \ \____/     \ \_____\  \ \_____\  \ \_\    \ \_\    \ \_____\  \ \_____\ ',
  \ '   \/_____/   \/_____/   \/_/ \/_/   \/____/      \/_____/   \/_____/   \/_/     \/_/     \/_____/   \/_____/ ',
  \]

