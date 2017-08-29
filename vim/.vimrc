set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" http://stackoverflow.com/questions/11873736/vim-ctrlp-plugin-manually-set-root-search-directory
let g:ctrlp_working_path_mode = 'c'

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

syntax on
filetype plugin indent on
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
let mapleader=" "
set hlsearch!

set cursorline
hi CursorLine   cterm=NONE ctermbg=144 ctermfg=black guibg=#cdb43d guifg=black
hi CursorColumn cterm=NONE ctermbg=144 ctermfg=black guibg=#cdb43d guifg=black
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

map <F2> :Ack <cword><CR>
nnoremap <S-F2> <Esc>gg=G
nnoremap <F3> :set hlsearch!<CR>
map <F7> :NERDTreeToggle<CR>
map <F9> :close<CR>
map <F10> :qa<CR>
nmap <F12> :set invnumber<CR>
map <c-n> :tabnew<CR>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

let NERDTreeShowHidden=1
hi Visual ctermfg=white ctermbg=black guifg=white guibg=black gui=none

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
