" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['.'] = [ ':let @/ = ""'                       , 'no highlight' ]
let g:which_key_map[';'] = [ ':Commands'                          , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'               , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'split below']
let g:which_key_map['j'] = [ ':Telescope jumplist'                , 'jump list']
let g:which_key_map['p'] = [ ':Files'                             , 'search files' ]
let g:which_key_map['P'] = [ ':GFiles'                            , 'search git files' ]
let g:which_key_map['q'] = [ 'q'                                  , 'quit' ]
let g:which_key_map['r'] = [ ':source $MYVIMRC'                   , 'reload config' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                    , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                             , 'split right']
let g:which_key_map['W'] = [ 'w'                                  , 'write' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+Actions' ,
      \ ';' : [':normal A;'                         , 'append semicolon'],
      \ 'c' : [':ColorToggle'                       , 'colorizer'],
      \ 'e' : [':CocCommand explorer'               , 'explorer'],
      \ 'h' : [':nohl'                              , 'remove search highlight'],
      \ 'l' : [':set list!'                         , 'toggle list characters'],
      \ 'm' : ['execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")' , 'toggle color column'],
      \ 'n' : [':set nonumber! norelativenumber!'   , 'toggle line numbers'],
      \ 'r' : [':set cursorline!'                   , 'toggle cursor line'],
      \ 't' : [':FloatermToggle'                    , 'terminal'],
      \ 'w' : [':StripWhitespace'                   , 'strip whitespace'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+Buffers' ,
      \ '1' : ['b1'         , 'buffer 1'],
      \ '2' : ['b2'         , 'buffer 2'],
      \ 'a' : [':bufdo bd'  , 'close all buffers'],
      \ 'b' : [':Telescope buffers'   , 'buffers list'],
      \ 'd' : [':Bdelete'   , 'delete buffer'],
      \ 'D' : [':Bdelete!'  , 'force delete buffer'],
      \ 'f' : ['bfirst'     , 'first buffer'],
      \ 'l' : ['blast'      , 'last buffer'],
      \ 'n' : ['bnext'      , 'next buffer'],
      \ 'p' : ['bprevious'  , 'previous buffer'],
      \ 'o' : [':%bd|e#'     , 'close all other buffers'],
      \ }

" f is for find and replace
let g:which_key_map.f = {
      \ 'name' : '+Find-Replace' ,
      \ 'f' : [':Farf   source=agnvim'      , 'find in project'],
      \ 'b' : [':Farr   source=vimgrep'     , 'replace in buffer'],
      \ 'p' : [':Farr   source=agnvim'      , 'replace in project'],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+Search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 't' : [':Telescope live_grep'   , 'text Rg'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'C' : [':FloatermNew lazygit -w $HOME -g $HOME/.dots', 'dots'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+LSP' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+Terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'a' : [':FloatermNew php artisan tinker'                , 'tinker'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }

" w is for Windows
let g:which_key_map.w = {
    \ 'name' : '+Windows',
    \ 'q' : [':close'      , 'close window'],
    \ 'o' : [':only'       , 'close other windows'],
  \ }

" T is for tabs
" let g:which_key_map.T = {
"       \ 'name' : '+Tabline' ,
"       \ 'b' : [':XTabListBuffers'         , 'list buffers'],
"       \ 'd' : [':XTabCloseBuffer'         , 'close buffer'],
"       \ 'D' : [':XTabDeleteTab'           , 'close tab'],
"       \ 'h' : [':XTabHideBuffer'          , 'hide buffer'],
"       \ 'i' : [':XTabInfo'                , 'info'],
"       \ 'l' : [':XTabLock'                , 'lock tab'],
"       \ 'm' : [':XTabMode'                , 'toggle mode'],
"       \ 'n' : [':tabNext'                 , 'next tab'],
"       \ 'N' : [':XTabMoveBufferNext'      , 'buffer->'],
"       \ 't' : [':tabnew'                  , 'new tab'],
"       \ 'p' : [':tabprevious'             , 'prev tab'],
"       \ 'P' : [':XTabMoveBufferPrev'      , '<-buffer'],
"       \ 'x' : [':XTabPinBuffer'           , 'pin buffer'],
"       \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
