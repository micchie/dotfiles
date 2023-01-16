set encoding=utf-8
set backspace=1
set spell
set textwidth=80

"autocmd ColorScheme * highlight Comment ctermfg=211 guifg=#008800

autocmd ColorScheme * highlight Constant ctermfg=144 guifg=#008800
autocmd ColorScheme * highlight Number ctermfg=144 guifg=#008800
autocmd ColorScheme * highlight PythonExceptions ctermfg=118 guifg=#008800

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('tomasr/molokai')
" uncomment below for Trinity
"  call dein#add('morhetz/gruvbox')
"  call dein#add('dracula/vim')
"  call dein#add('vim-scripts/The-NERD-tree')
"  call dein#add('vim-scripts/taglist.vim')
"  call dein#add('https://github.com/wesleyche/SrcExpl.git')
"  call dein#add('https://github.com/wesleyche/Trinity.git')
"  call dein#add('sjl/badwolf')
"  if !has('nvim')
"    call dein#add('roxma/nvim-yarp')
""    call dein#add('roxma/vim-hug-neovim-rpc')
"  endif
"
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" doesn't work for molokai...
set visualbell
set background=dark
color molokai

" for automatic indent detection, see
" https://www.vim.org/scripts/script.php?script_id=4375
