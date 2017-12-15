set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" 
" " JSX style
" Plugin 'mxw/vim-jsx'
" 
" Elixir highlighting in vim
Plugin 'elixir-lang/vim-elixir'
" 
" Crystal Highlighting
Plugin 'https://github.com/rhysd/vim-crystal'
" 
" Nerdtree
Plugin 'scrooloose/nerdtree.git'
" 
" Colorscheme
Bundle 'morhetz/gruvbox'
" 
" " autoformat rails stuff
" Bundle 'KurtPreston/vim-autoformat-rails'
" 
" " Puppet syntax
" Bundle 'rodjek/vim-puppet'
" 
" Command Line search toold that is fast
Bundle 'rking/ag.vim'
" 
" Fuzzy finder -- absolutely must have.
Bundle 'kien/ctrlp.vim'
 
" " vim already has syntax support for javascript, but the indent support is horrid. This fixes that.
" Bundle 'pangloss/vim-javascript'
 
" " vim indents HTML very poorly on it's own. This fixes a lot of that.
" Bundle 'indenthtml.vim'
 
" Run your ruby tests `:help vroom`
Bundle 'skalnik/vim-vroom'
" 
" Ruby filytype settings
Bundle 'vim-ruby/vim-ruby'

" Go development plugin
Bundle "fatih/vim-go"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Ruby speedup
let g:ruby_path="~/.rbenv/shims/ruby"

let loaded_matchparen = 1 " hopefully this speeds things up
set re=1

" colors
colorscheme gruvbox
" colorscheme badwolf
syntax enable
syntax on
set ttyfast
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


" spaces and tabs
set expandtab " tabs are spaces
set backspace=2 " so mac delete works like backspace in insert
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2
set ruler
set smarttab
set autoindent


" UI config
set number " show line numbers
set showcmd " show command in bottom bar
set nocursorline " highlight current line
set wildmenu " visual autocomplete for command menu. Example :e ~/.vim<TAB> will provide graphical  menu of all matches you can cycle through
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set nowrap " do not wrap lines
set nocursorcolumn " highlight vertical line
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.git,*/vendor


set t_Co=256 " 256 colors setting
let &t_Co=256
set gfn=Monaco:h18
:hi Directory guifg=#FF0000 ctermfg=red " color for NERDTree folders

" discolor after 101 chars
" let &colorcolumn=join(range(101,999),",")

 " make comments italic
highlight Comment cterm=italic

filetype indent on " load filetype-specific indent files. Example ~/.vim/indent/python.vim will be loaded every time a *.py file is opened 

" seaching
set incsearch " search as characters are entered
set hlsearch " highlight matches
" Vim will keep highlighted matches from searches until you either run a new on or manually stop highlighting the old search with :nohlsearch. Map that command to \ <space>
nnoremap <leader><space> :nohlsearch<CR>

" folding. aka code hiding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max

 " space open/closes folds
" nnoremap <space> za
"
set foldmethod=indent " fold based on indent level

 " open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_swith_buffer = 0
let g:ctrlp_working_path_mode = 0
" use ag to search for files when using CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" NERDTree open by default if no file is given
" Always open NERDTree by default
autocmd VimEnter * wincmd p
" Do not open nerdtree if gitcommit
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree  | wincmd p | endif
let NERDTreeShowHidden=1

" Allow vim to jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Auto format JSX for .js file
let g:jsx_ext_required = 0

" write backups to /tmp filder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" show tabs as arrows
set list
set listchars=tab:>-
