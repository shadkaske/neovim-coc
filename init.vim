"   Author: Shad Kaske
"   Repo: https://github.com/shadkaske/dotfiles
"

" Set Leader key to space
let g:mapleader=' '

" Plugins
source $HOME/.config/nvim/plugins.vim

" Editor Settings
source $HOME/.config/nvim/editor-config/general.vim
source $HOME/.config/nvim/editor-config/autocmd.vim
source $HOME/.config/nvim/editor-config/syntax.vim
source $HOME/.config/nvim/editor-config/folding.vim
source $HOME/.config/nvim/editor-config/theme.vim
hi Normal guibg=NONE ctermbg=NONE

" Load Plugin Settings
source $HOME/.config/nvim/plugin-config/airline.vim
source $HOME/.config/nvim/plugin-config/tmuxline.vim
source $HOME/.config/nvim/plugin-config/vim-test.vim
source $HOME/.config/nvim/plugin-config/gitgutter.vim
source $HOME/.config/nvim/plugin-config/sneak.vim
source $HOME/.config/nvim/plugin-config/floatterm.vim
source $HOME/.config/nvim/plugin-config/vdebug.vim
source $HOME/.config/nvim/plugin-config/coc.vim
source $HOME/.config/nvim/plugin-config/undotree.vim
source $HOME/.config/nvim/plugin-config/telescope.vim
source $HOME/.config/nvim/plugin-config/fugitive.vim
source $HOME/.config/nvim/plugin-config/maximizer.vim
" source $HOME/.config/nvim/plugin-config/nvim-tree.vim
" source $HOME/.config/nvim/plugin-config/fzf.vim
" source $HOME/.config/nvim/plugin-config/farr.vim
" source $HOME/.config/nvim/plugin-config/phpfmt.vim
" source $HOME/.config/nvim/plugin-config/easymotion.vim
" source $HOME/.config/nvim/plugin-config/emmet.vim

" Keymaps
source $HOME/.config/nvim/keys/maps.vim
source $HOME/.config/nvim/keys/which-key.vim
