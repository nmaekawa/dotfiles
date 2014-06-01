"------------------------------------------------------------
" based on
"
" - http://vim.wikia.com/wiki/Example_vimrc
" - https://github.com/amix/vimrc
"

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" change <leader> to be a comma
let mapleader=","

" - switch from unsaved buffer without saving it
" - keep undo of multiple files
set hidden

" Show partial commands in the last line of the screen
set showcmd
set showmode

" show the filename in window titlebar
set title

" sets how many lines of history vim has to remember
set history=700

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" enable per-directory .vimrc files, disable unsafe commands in them
set exrc
set secure

"------------------------------------------------------------
" Usability options {{{1
"
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Instead of failing a command because of unsaved changes, raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set vb t_vb=

" :commands always print changed line count
set report=0

" Always display the status line, even if only one window is displayed
set laststatus=2
set statusline=%<                 " truncation point
set statusline+=[%n]              " buffer number
set statusline+=\ %f              " relative path to file
set statusline+=\ [%{getcwd()}]   " cwd
set statusline+=\ %h%m%r          " help, modified, readonly flags
set statusline+=%=                " point for right justification
set statusline+=\ %-14.(%l,%c%V%) " current line,column
set statusline+=\ %P              " percentage through buffer

" Enable use of the mouse for all modes
set mousemodel=extend

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=2

" Display line numbers on the left
set number
set numberwidth=1

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" enable 256 color mode
set t_Co=256

" turn off swap files
set noswapfile
set nobackup
set nowb

" undo dir
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" colors
try
    colorscheme desert
catch
endtry
set background=dark

" Enable syntax highlighting
syntax on

" intelligent auto-indenting for each filetype,
filetype indent plugin on

if has("autocmd")
    " treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

"------------------------------------------------------------
" reading/writing
"
set noautowrite        " never write a file unless i request
set noautowriteall
set noautoread         " don't auto re-read changed files
set ffs=unix,dos,mac   " try recognizing unix, dos, mac end of line


"------------------------------------------------------------
" searching and patterns
"
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set magic              " for regular expressions


"------------------------------------------------------------
" moving around editing
"
" stop certain movements from always going to the first character of a line.
" while this behavior deviates for that of vi, it does what most users coming
" from other editors would expect
set nostartofline

set shiftround         " rounds indent to a multiple of shiftwidth
set showmatch
set matchpairs+=<:>    " show matching <> (html mainly) as well
set foldmethod=indent  " allow us to fold on indent
set foldlevel=99       " don't fold by default

" when opening a new line and no filetype-specific indenting is enabled,
" keep the same indent as teh line you're currently on. Good for READMEs, etc
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

set textwidth=90
set encoding=utf-8

" display tabs and trailling spaces visually
set list listchars=tab:>.,trail:*,extends:#,nbsp:.

set wrap
set linebreak          " wrap lines at convenient places

" Better command-line completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif

" allow cursor keys in insert mode
set esckeys

"------------------------------------------------------------
" Useful mappings
"

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" don't use Q for Ex mode
map Q :q

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>



"------------------------------------------------------------
" plugins
"
so ~/.vim/plugins.vim


"------------------------------------------------------------
" vimwiki
"
so ~/.vim/vimwiki.vim


"------------------------------------------------------------
" pydiction location
let g:pydiction_location='~nmaekawa/Applications/vim/vimfiles/ftplugin/pydiction-1.2/complete-dict'

