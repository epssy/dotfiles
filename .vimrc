" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'fatih/vim-go'
call vundle#end()

filetype plugin indent on

" go format on save
autocmd BufWrite *.go :! gofmt % > /dev/null
autocmd BufWrite *.go :! goimports % > /dev/null

" make pretty
syntax on
set background=dark
let g:solarized_termtrans=1

" General buffer formatting
set ts=2 sts=2 sw=2 expandtab
set clipboard+=unnamed
set ruler
