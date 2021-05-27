" VDebug
hi default DbgBreakptLine term=reverse ctermfg=Black ctermbg=Cyan
hi default DbgBreakptSign term=reverse ctermfg=White ctermbg=Red

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

let vdebug_options["path_maps"] = {
    \ "/home/printapp":"/home/shad/Code/printapp"
  \ }

let vdebug_options.break_on_open = 0
