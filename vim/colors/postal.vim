" Vim colorscheme template file
" Author: Gerardo Galindez <gerardo.galindez@gmail.com>
" Maintainer: Gerardo Galindez <gerardo.galindez@gmail.com>
" Notes: To check the meaning of the highlight groups, :help 'highlight'
" Tip: See http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html 
"      for color codes

" --------------------------------
set background=dark
" - or ---------------------------
"set background=light
" --------------------------------

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="postal"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=231     ctermbg=16      cterm=none
hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=none    cterm=none
hi LineNr          ctermfg=215     ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=none    ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=16      ctermbg=215     cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=16      ctermbg=231     cterm=none
hi StatusLineNC    ctermfg=16      ctermbg=247    cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=none    ctermbg=35      cterm=none
hi Visual          ctermbg=16      term=reverse    cterm=reverse
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=none    ctermbg=none    cterm=none

hi Todo            ctermfg=16      ctermbg=203     cterm=none
"hi Todo            ctermfg=16      ctermbg=213    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=204     ctermbg=none    cterm=none
hi String          ctermfg=204     ctermbg=none    cterm=none
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
hi Character       ctermfg=none    ctermbg=none    cterm=none
hi Number          ctermfg=204     ctermbg=none    cterm=none
hi Boolean         ctermfg=204     ctermbg=none    cterm=none
hi Float           ctermfg=none    ctermbg=none    cterm=none

hi Identifier      ctermfg=none    ctermbg=none    cterm=none
hi Function        ctermfg=51      ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=227     ctermbg=none    cterm=none
hi Conditional     ctermfg=227     ctermbg=none    cterm=none
hi Repeat          ctermfg=227     ctermbg=none    cterm=none
hi Label           ctermfg=none    ctermbg=none    cterm=none
hi Operator        ctermfg=227    ctermbg=none    cterm=none
hi Keyword         ctermfg=none    ctermbg=none    cterm=none
hi Exception       ctermfg=227     ctermbg=none    cterm=none
hi Comment         ctermfg=39      ctermbg=none    cterm=none

hi Special         ctermfg=215     ctermbg=none    cterm=bold
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=213     ctermbg=none    cterm=none
hi SpecialComment  ctermfg=39      ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=213     ctermbg=none    cterm=none
hi Include         ctermfg=213     ctermbg=none    cterm=none
hi Define          ctermfg=213     ctermbg=none    cterm=none
hi Macro           ctermfg=213     ctermbg=none    cterm=none
hi PreCondit       ctermfg=213     ctermbg=none    cterm=none

hi Type            ctermfg=46      ctermbg=none    cterm=none
hi StorageClass    ctermfg=46      ctermbg=none    cterm=none
hi Structure       ctermfg=46      ctermbg=none    cterm=none
hi Typedef         ctermfg=46      ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=16      ctermbg=120     cterm=none
hi DiffChange      ctermfg=16      ctermbg=87      cterm=none
hi DiffDelete      ctermfg=16      ctermbg=219     cterm=none
hi DiffText        ctermfg=none    ctermbg=196     cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=203     cterm=none
hi SpellCap        ctermfg=none    ctermbg=203     cterm=none
hi SpellLocal      ctermfg=none    ctermbg=203     cterm=none
hi SpellRare       ctermfg=none    ctermbg=203     cterm=none

"====================================================================
" Specific settings                                                 |
"====================================================================
"--------------------------------------------------------------------
" LaTeX
"--------------------------------------------------------------------
hi texStatement    ctermfg=51      ctermbg=none    cterm=none
hi texSection      ctermfg=227     ctermbg=none    cterm=none
hi texBeginEnd     ctermfg=213     ctermbg=none    cterm=none
hi texGreek        ctermfg=227     ctermbg=none    cterm=none
hi texMathZoneX    ctermfg=213     ctermbg=none    cterm=none
"--------------------------------------------------------------------
" Markdown
"--------------------------------------------------------------------
hi markdownLineBreak ctermfg=none  ctermbg=213     cterm=none
