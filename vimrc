autocmd VimEnter * set t_ut=
set termguicolors
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set path=$PWD/**
let g:node_hose_prog = expand("~/.nvm/versions/node/v14.5.0/bin/node")
set relativenumber

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
" Games for getting better
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'tjdevries/train.nvim'

call plug#end()

let g:ctrlp_use_caching = 0
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeS"hello only when 10 seconds have gone", how<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap m, :w<CR>:!clear<cr>:!python %<cr>

fun! GoYCM()
    nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
    nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
endfun
colorscheme airthings

"Custom python header
autocmd bufnewfile *.py 0r ~/.vim/python_header.
autocmd bufnewfile *.py exe "1," . 11 . "g/File name:/s//File name: " .expand("%") 
autocmd bufnewfile *.py exe "1," . 11 . "g/Creation date:/s//Creation Date: " .strftime("%a %d %b %Y")
