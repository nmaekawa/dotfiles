"------------------------------------------------------------
" neobundle as plugin manager
" https://github.com/Shougo/neobundle.vim
"
if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


call neobundle#begin(expand('~/.vim/bundle/'))
    " neobundle manages neobundle
    NeoBundleFetch 'Shougo/neobundle.vim'

    "NeoBundle 'Shougo/neocomplcache.vim'
    "NeoBundle 'scrooloose/syntastic'
    NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/neosnippet-snippets'
    NeoBundle 'Shougo/unite'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'kien/ctrlp.vim'
    NeoBundle 'flazz/vim-colorschemes'
call neobundle#end()

" check for uninstalled bundles on startup
NeoBundleCheck


