" Tmux Line
let g:tmuxline_separators = {
      \ 'left' : '',
      \ 'left_alt': ')',
      \ 'right' : '',
      \ 'right_alt' : '(',
      \ 'space' : ' '}

" let g:tmuxline_powerline_separators = 0
let g:tmuxline_status_justify = 'left'

  let g:tmuxline_preset = {
        \'a'    : '#S',
        \'b'    : '',
        \'win'  : ['#I', '#W'],
        \'cwin' : ['#I', '#W', '#F'],
        \'x'    : '',
        \'y'    : '%R',
        \'z'    : '#H'}

