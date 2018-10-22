" Plugin manager first
set nocompatible
filetype off			" Helps force plug-ins to load correctly when turned on below

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'flazz/vim-colorschemes'

Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

syntax on			" Turn on syntax highlighting
colorscheme Tomorrow-Night

set guifont=Inconsolata:h18

" 80 Column guide line
set colorcolumn=80

set t_Co=256            " Enable 256 colors
" set t_AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm

set number			" Show line numbers
set encoding=utf-8		" Encoding

set hidden
set history=100

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set scrolloff=5			" Display 5 lines above/below the cursor

set ttyfast			" Speed up scrollin in vim

set laststatus=2		" Status bar

set showmode			" Display options
set showcmd

" ----- FOLDING ----

" Map the <Space> key to toggle a selected fold opened/closed
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" ----- SEARCH -----

set hlsearch			" Highlight matching search patterns
set incsearch			" Enable incremental search
set ignorecase			" Include matching uppercase with lowercase
set smartcase			" Include only uppercase words with uppercase search term

set nocompatible		" Vim compatibility

" ----- TURN OFF THE GD BEEP ------
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

hi Normal guibg=NONE ctermbg=NONE

" Custom key bindings
map <A-w> :NERDTreeToggle<CR>
