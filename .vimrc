if has('gui_running')
set guifont=Nimbus\ Sans\ L/h11
endif
:set number
:highlight LineNr ctermfg=yellow

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
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Цвет номеров строк
highlight LineNr ctermfg=green
highlight LineNr ctermbg=black

nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F8> :TagbarToggle<CR>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
set laststatus=2
set mouse=a
