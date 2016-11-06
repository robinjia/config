"Tab options: use 2 space tabs.
set tabstop=2  "Render tabs as 2 spaces
set shiftwidth=2  "Reindent operations use 2 spaces
set expandtab  "Expand tabs to spaces
set softtabstop=2  "Expand tabs to 2 spaces

"Line breaks
"set textwidth=80  "Automatically break long lines
set lbr  "Only break lines on whitespace

"Searching
set incsearch  "Do incremental searches
set hls  "Highlight search on

"Other
set number  "Line numbers on
syntax on  "Syntax highlighting
colorscheme postal
filetype plugin on
filetype indent plugin on  "Automatic indentation based on .vim/indent
set noesckeys  "Fixes pause after ESC+O

map Q :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"Status line
set laststatus=2  "Always show status bar
set ruler

"Python skeleton
au BufNewFile *.py 0r ~/.vim/skeleton.py

"Flex coloring
au BufEnter *.flex set syntax=c

"Tex spelling
au BufEnter *.tex set syntax=tex
"     \ set spell spelllang=en_us 

"Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Jemdoc
au BufEnter *.jemdoc setf jemdoc

"Scala
au BufEnter *.scala 
      \ set syntax=scala |
      \ set autoindent

"HTML template files
au BufEnter *.tpl set autoindent

"[research/pliang] Coloring for logical forms, knowledge graphs
au BufEnter *.examples set filetype=percylisp
au BufEnter *.grammar 
      \ set filetype=percylisp |
      \ set autoindent
au BufEnter *.graph set filetype=percylisp
au BufEnter *.lf set syntax=python

"[research/chrismre] DeepDive application.conf
au BufEnter application.conf 
      \ set syntax=sh |
      \ set autoindent
