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
colorscheme default
filetype indent plugin on  "Automatic indentation based on .vim/indent

"Status line
set laststatus=2  "Always show status bar
set ruler

"Flex coloring
au BufEnter *.flex set syntax=c

"Tex spelling
au BufEnter *.tex set spell spelllang=en_us 

"[research/pliang] Coloring for logical forms, knowledge graphs
au BufEnter *.lf set syntax=python
au BufEnter *.graph
      \set syntax=lisp |
      \set autoindent
