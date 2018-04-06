"#############################################################################"
"                *** AlaaDAhmed Vimrc Configuration ***                       " 
"#############################################################################"
" We want the latest Vim settings/options.
set nocompatible
set nowrap
set textwidth=100
set encoding=utf8                                " To allow special characters and icons.
set lazyredraw
 
" enable syntax and (plugin for netrw)
syntax enable
filetype plugin on

" Search down into subfolders.
" Provides tab-completion for all file-related tasks.
set path+=**

" Display all matching files when we tab complete.
set wildmenu

" Ignore files or folders under node_modules.
set wildignore+=**/node_modules/**

" TAG JUMPING:
" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .
" NOW WE CAN:
" - Use ^] to jump to tag under cursor.
" - Use g^] for ambiguous tags -> will display all instance of that tag.
" - Use ^t to jump back up the tag stack.

" THINGS TO CONSIDER:
" This doesn't help if you want a visual list of tags

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick! above☝︎)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings


"==============================================================================
call plug#begin('~/.vim/plugged')                " You could write: `so ~/.vim/plugged.vim`

" Utilities
" ----------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'majutsushi/tagbar'                         "Browse tags of current file and its structure.
Plug 'benmills/vimux'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'gilsondev/searchtasks.vim'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'schickling/vim-bufonly'
Plug 'wikitopian/hardmode'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Generic Programming Supports
" ----------------------------
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'                 "Support for tons of programming languages inside of vim.
Plug 'ludovicchabant/vim-gutentags'         "Jump to the definition of a method, class or module using Ctrl-].
Plug 'slashmili/alchemist.vim'              "It exposes module and method definitions to your fingertips.
Plug 'neomake/neomake'                      "Executes code checks to find mistakes in the currently edited file.

" Git Support
" ----------------------------
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', {'on': ['Gitv']}

" Erlang Support
" ----------------------------
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-skeletons'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'

" Elixir Support
" ----------------------------
Plug 'elixir-editors/vim-elixir'
Plug 'https://github.com/c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'mmorearty/elixir-ctags'
Plug 'tpope/vim-endwise'

" Elm Support
" ----------------------------
Plug 'ElmCast/elm-vim'

" Theme / Interface
" ----------------------------
Plug 'vim-scripts/Improved-AnsiEsc'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'bling/vim-bufferline'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'daylerees/colour-schemes'
Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'rakr/vim-one'

call plug#end()  		                 "required.
"==============================================================================

"==============================================================================
" THEMES & UI
"==============================================================================
set number
set ruler
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set laststatus=2
"set cursorline
set backspace=indent,eol,start                   " Make <Backspace> works as expected.
hi LineNr guibg=bg

" Changing cursor shape in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

if (has("termguicolors"))
  set termguicolors
endif

colorscheme one
set background=dark

" set foldcolumn=1
" hi foldcolumn ctermbg=bg



"==============================================================================
" VARIABLES
"==============================================================================
let mapleader = ';'                            " Changing the default <Leader> from '\' to ';'

"Adding support for different language to use in Code Block in Markdown file.
let g:markdown_fenced_languages = ['html', 'ruby', 'javascript', 'elixir', 'typescript', 'elm']
let g:markdown_syntax_conceal = 0




"==============================================================================
" MAPPINGS - Generals
"==============================================================================
" Open .vimrc file in new tab for editing.
nmap <Leader>ev :tabedit $MYVIMRC<CR>

" Hightlight removal shortcut.
nmap <Leader><Space> :nohlsearch<CR>

nmap <Leader>f :tag<Space>


" Split Management.
"----------------------------
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"==============================================================================
" AUTO COMMANDS
"==============================================================================

"We tell vim to force Markdown filetype if the extension is .md
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"==============================================================================
" SETTINGS
"==============================================================================
set hlsearch
set incsearch
set relativenumber
set noswapfile

" Split Management.
"----------------------------
set splitbelow                                   " Set Horizontal split below the current window.
set splitright                                   " Set Vertical split on the right side.




"==============================================================================
" PLUGINS CONFIGURATIONS
"==============================================================================
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
set laststatus=2
set showtabline=1
set noshowmode

"----------------------------
" Vim-Airline 
"----------------------------
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
let g:airline_theme='one'

"----------------------------
" Vim Gutentags
"----------------------------
let g:gutentags_cache_dir = '~/.tags_cache'


"----------------------------
" Alchemist Tag 
"----------------------------
let g:alchemist_tag_disable = 1


"----------------------------
" EasyAlign
"----------------------------
" Start interactive EasyAlign in Visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"----------------------------
" UltiSnips
"----------------------------
let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwordTrigger='<S-Tab>'


"----------------------------
" Deoplete
"----------------------------
" let g:deoplete#enable_at_startup = 1


"----------------------------
" HardMode
"----------------------------
"HardMode to disable HJKL navigation keys and also Arrow keys.
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" nnoremap <Leader>h <Esc>:call ToggleHardMode()<CR>


"----------------------------
" NERDTree
"----------------------------
nmap <C-N> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0


"----------------------------
" Neomake settings
"----------------------------
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']
" When writing a buffer
call neomake#configure#automake('w')

" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)

" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000) 

"----------------------------
" Elixir Tagbar Configuration
" ---------------------------
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }


"-----------------------------
" Fzf Configuration
"-----------------------------
set rtp+=/usr/local/opt/fzf

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'
