set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nvie/vim-flake8'
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
Plugin 'vim-scripts/taglist.vim'
Plugin 'winmanager'
Plugin 'a.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

let Tlist_Show_One_File=1 
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Auto_Update=1    
 
set tags=tags
set tags+=/usr/include/tags
nmap tg :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q *<CR>:set tags+=./tags<CR>

" WinManagerÉèÖÃ
" NERD_Tree¼¯³Éµ½WinManager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
     exec 'NERDTree'
endfunction
      
function! NERDTree_IsValid()
     return 1
endfunction
           
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
let g:winManagerWidth=30 
let g:winManagerWindowLayout='NERDTree|TagList'
let g:persistentBehaviour=0


syntax enable
syntax on
set background=dark
colorscheme solarized

set ruler 
set number
"set columns=100
"set lines=40

" set guifont=Consolas:h15
set autoindent
set tabstop=4
set expandtab
set dictionary+=/root/dict.txt
set complete+=k


set foldmethod=syntax
set foldlevel=100
set foldcolumn=3

set t_Co=256
let g:airline_theme='term'
let g:airline#extensions#tabline#enabled=1

set relativenumber

" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_guide_size=1


" highlight tabs and trailing spaces
" set list
" set listchars=tab:>-,trail:-,extends:>,precedes:<

set cursorline cursorcolumn
set colorcolumn=80
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

autocmd BufWritePost $MYVIMRC source $MYVIMRC


