set nocompatible
set laststatus=2
filetype  off
syntax    on
syntax    enable
filetype  plugin on
filetype  indent on

source ~/dotfiles/vim/bundles.vim
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Vim UI
set background=dark
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
highlight clear SignColumn      " SignColumn should match background
set linespace=4                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set clipboard=unnamedplus
set visualbell t_vb=
set cursorline
set history=1000
set confirm                 " prompt when existing from an unsaved file
set backspace=indent,eol,start " More powerful backspacing
set t_Co=256                " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                 " use mouse in all modes
set ttymouse=xterm2
set report=0                " always report number of lines changed                "
set nowrap                  " dont wrap lines
set number                  " show line numbers
set showmatch               " show matching bracket (briefly jump)
set showcmd                 " show typed command in status bar
"set title                  " show file in titlebar
set matchtime=2             " show matching bracket for 0.2 seconds
set matchpairs+=<:>         " specially for html
set autoindent
set smartindent             " indent when
set tabstop=4               " tab width
set softtabstop=4           " backspace
set expandtab               " expand tab to space
set shiftwidth=2
set softtabstop=2

" Nerd Tree
let NERDTreeWinSize=20
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=[]
let NERDTreeShowBookmarks=0
let NERDTreeWinPos = "left"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" for macvim
if has("gui_running")
  set guitablabel=%M%t
  set go=aAce  " remove toolbar
  set guifont=Menlo:h14
  "set showtabline=(0,1,2)
  "set columns=140
  "set lines=40
endif

colorscheme railscasts

set fo=l

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"hide buffers when not displayed
set hidden
map bn :bn<cr>          " Next buffer.
map bp :bp<cr>          " Previous buffer.
map bd :bd<cr>          " buffer close"

""""""""""""""""" SHORTCUTS """""""""""""""""
"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal! g`\""
      normal! zz
    endif
  end
endfunction

"let ScreenShot = {'Icon':0, 'Credits':0, 'force_background':'#FFFFFF'}

