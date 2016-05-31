filetype  on
syntax    on
filetype  plugin on

execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Default
Plugin 'gmarik/vundle'
Plugin 'L9'
Plugin 'kien/ctrlp.vim' "search files
Plugin 'scrooloose/nerdtree' "tree folders end files
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bling/vim-airline'
Plugin 'mattboehm/vim-accordion' "vim window manager for people who love splits.
Plugin 'ZoomWin' "maximize a single window
Plugin 'mhinz/vim-signify' "show git diff
Plugin 'avakhov/vim-yaml'

" Libraries
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'tpope/vim-repeat'
Plugin 'chrisbra/csv.vim'

" Automatic Helpers
Plugin 'Raimondi/delimitMate' "auto close

" UI Additions
Plugin 'Rykka/colorv.vim'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chriskempson/base16-vim'
"Plugin 'mattn/calendar-vim'

Bundle 'd11wtq/tomorrow-theme-vim'

" Commands
Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'
Plugin 'itspriddle/vim-stripper'

" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
"Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" PHP
Plugin 'shawncplus/phpcomplete.vim'
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "garbas/vim-snipmate"
"Bundle "honza/vim-snippets"

" Ruby
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-haml'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-rake'
"Plugin 'tpope/vim-bundler'
"Plugin 'rainerborene/vim-reek'
"Plugin 'ecomba/vim-ruby-refactoring'
"Plugin 'nelstrom/vim-textobj-rubyblock'
"Plugin 'nanki/treetop.vim'

"JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
"Plugin 'nono/vim-handlebars'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nono/vim-handlebars'
Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'nathanaelkane/vim-indent-guides'

"HTML
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'

" Other Languages Syntax highlight
Plugin 'timcharper/textile.vim'
"Plugin 'gmarik/vim-markdown'
"Plugin 'tsaleh/vim-tmux'
Plugin 'tsaleh/vim-tmux'
"Plugin 'rodjek/vim-puppet'
"Plugin 'Puppet-Syntax-Highlighting'
Plugin 'scrooloose/syntastic'
Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'

call vundle#end()

execute pathogen#infect()

filetype plugin indent on

"set g:airline_theme="badwolf"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_javascript_checkers = ["jshint"]
"let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
if has("unix")
  let g:syntastic_error_symbol = "✇"
  let g:syntastic_style_error_symbol = ">"
  let g:syntastic_warning_symbol = "☛"
  let g:syntastic_style_warning_symbol = ">"
endif

let g:syntastic_enable_signs=1
let mapleader = ","

" Vim UI
set background=dark
set tabpagemax=15               " Only show 15 tabs
set ts=4 "tab size
set showmode                    " Display the current mode
set linespace=4                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set scrolljump=2
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
"set foldenable                  " Auto fold code
"set regexpengine=1
"set foldmethod=indent           "fold based on indent
set noshowmode
set bdir+=/tmp
set dir-=.
set dir+=/tmp
set undolevels=10000                         " Large undo levels.
set encoding=utf8                            " Always use unicode.
set nobackup                                 " Disable backups.
set ic

set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%c,%l]
"set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
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
set numberwidth=2
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
set ruler                         " Show the cursor position.
set cf                            " Enable error jumping.
set hlsearch                      " Highlight search patterns.
set wrapscan                      " Wrap to top of buffer when searching.
set pastetoggle=<F2>


" Nerd Tree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeWinSize=40
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0
let NERDTreeWinPos = "left"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store,*/bower_components/*,*/node_modules/*  " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components\|tmp'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 20

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

"let base16colorspace=256
"colorscheme railscasts
"hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
colorscheme railscasts
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE

"hide buffers when not displayed
"set hidden
map bn :bn<cr>          " Next buffer.
map bp :bp<cr>          " Previous buffer.
map bd :bd<cr>          " buffer close"

" Flod Focus
"map <Leader>ff :call FoldFocus('e')<CR> " Focus in place
map <Leader>ff :call FoldFocus('vnew')<CR> " Focus sidebar


""""""""""""""""" SHORTCUTS """""""""""""""""
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

" Misc
" ------------------------------------------------------------------------------

" Resize all splits when the (tmux) panel is resized
au VimResized * exe "normal! \<c-w>="

" Open the file in the same line that the cursor were when the buffer was
" closed
augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   execute 'normal! g`"zvzz' |
        \ endif
augroup END


" Don't close window, when deleting a buffer
" -----------------------------------------
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction

" Close hidden buffers
" -------------------
function! DeleteInactiveBufs()
  "From tabpagebuflist() help, get a list of all buffers in all tabs
  let tablist = []
  for i in range(tabpagenr('$'))
    call extend(tablist, tabpagebuflist(i + 1))
  endfor

  "Below originally inspired by Hara Krishna Dara and Keith Roberts
  "http://tech.groups.yahoo.com/group/vim/message/56425
  let nWipeouts = 0
  for i in range(1, bufnr('$'))
    if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
      "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
      silent exec 'bwipeout' i
      let nWipeouts = nWipeouts + 1
    endif
  endfor
  echomsg nWipeouts . ' buffer(s) wiped out'
endfunction

command! Bdi :call DeleteInactiveBufs()
