if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

"" Set persistent undo undo file
if has("persistent_undo")
   let target_path = expand('~/.local/share/nvim/undo')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
