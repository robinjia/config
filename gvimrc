"gvim-specific configuration
""Note that gvimrc configuration runs after vimrc
set vb t_vb=  " Disable bell
set guioptions+=k  " Prevent window movement on vertical splits
set guifont=Consolas:h11  " Set font

"vim-plug
call plug#begin('~/vimfiles/plugged')
Plug 'lervag/vimtex'
call plug#end()

"vimtex
let g:vimtex_view_general_viewer = 'SumatraPDF'
