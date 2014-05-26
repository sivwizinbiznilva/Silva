set nocompatible
set ruler
set showcmd

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Colour-Sampler-Pack'
Bundle 'molokai'
Bundle 'desert256.vim'
Bundle 'Wombat'
Bundle 'https://github.com/garbas/vim-snipmate.git'

au BufRead,BufNewFile *.md set filetype=markdown
filetype plugin indent on
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = '/Applications/Skim.app/Contents/MacOS/Skim'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
syntax on
set foldmethod=syntax
set foldcolumn=0
set foldlevelstart=9999
set wrap
"set textwidth=79
set relativenumber
set ruler
set nolist
set dictionary=/usr/share/dict/words
set shellcmdflag=-ic
set thesaurus=/Users/Silva/.vim/mthesaur.txt
imap <D-space> <Esc>
"nnoremap <leader>md :silent !open -a Marked.app '%:p'<cr>
"nmap <leader>md :!/usr/local/bin/Markdown.pl --html4tags index.md > index.html <cr>
nnoremap <leader>md :silent !build <cr>
nnoremap <leader>v :r !pbpaste <cr>
