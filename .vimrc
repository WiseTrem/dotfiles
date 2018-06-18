"if has('gui_running')
"set guifont=Nimbus\ Sans\ L/h11
"endif
:set number
":highlight LineNr ctermfg=yellow

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'fatih/vim-go'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'jpalardy/spacehi.vim'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'avakhov/vim-yaml'
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Цвет номеров строк
highlight LineNr ctermfg=blue
highlight LineNr ctermbg=black

nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F8> :TagbarToggle<CR>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
set laststatus=2
set mouse=a
set guifont=Terminus
let g:airline_theme='badwolf'
set background=dark
let g:airline_powerline_fonts=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
syntax on

" Непечатные символы
" Быстрый вызов команды `set list!` - \l
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
