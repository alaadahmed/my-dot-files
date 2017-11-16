"#############################################################################"
"                *** AlaaDAhmed Vimrc Configuration ***                       " 
"#############################################################################"

set nocompatible                                 " We want the latest Vim settings/options.
syntax on                                        " We like syntax highlights.
" set paste
set nowrap
set textwidth=100
set encoding=utf8                                " To allow special characters and icons.

"==============================================================================
call plug#begin('~/.vim/plugged')                " You could write: `so ~/.vim/plugged.vim`

" Utilities
" ----------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'                         "Browse tags of current file and its structure.
Plug 'benmills/vimux'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "We already installed fzf using Homebrew!
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'gilsondev/searchtasks.vim'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'schickling/vim-bufonly'
Plug 'wikitopian/hardmode'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Generic Programming Supports
" ----------------------------
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
" Plug 'w0rp/ale'                             "Linting Engine -> Lint while you type.
Plug 'vim-syntastic/syntastic'
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
Plug 'elixir-lang/vim-elixir'
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
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
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

" All of your plugins must be added before the following line:
call plug#end()  		                 "required.
"==============================================================================


"==============================================================================
" THEMES & UI
"==============================================================================
set number
set ruler
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2
set cursorline
set backspace=indent,eol,start                   " Make <Backspace> works as expected.
hi LineNr guibg=bg

if (has("termguicolors"))
  set termguicolors
endif

colorscheme space-vim-dark

" set foldcolumn=1
" hi foldcolumn ctermbg=bg



"==============================================================================
" VARIABLES
"==============================================================================
let mapleader = ';'                            " Changing the default <Leader> from '\' to ','

"Adding support for different language to use in Code Block in Markdown file.
let g:markdown_fenced_languages = ['html', 'ruby', 'javascript', 'elixir', 'typescript', 'elm']
let g:markdown_syntax_conceal = 0




"==============================================================================
" MAPPINGS - Generals
"==============================================================================
" Open .vimrc file in new tab for editing.
nmap <Leader>ev :tabedit $MYVIMRC<CR>

" Open plugins' file for editing in new tab.
nmap <Leader>ep :tabedit ~/.vim/plugged.vim<CR>

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
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set showtabline=2
set noshowmode

"----------------------------
" Vim-Airline 
"----------------------------
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='deus'

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
" CtrlP
"----------------------------
" CtrlP Mappings
"nmap <C-R> :CtrlPBufTag<CR>
"nmap <D-E> :CtrlPMRUFiles<CR>

"let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
"let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'

""Enhance searching and indexing.
"if executable('ag')
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command =
"    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"else
"  " Fall back to using git ls-files if Ag is not available
"  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
"  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
"endif


"----------------------------
" Vim-Syntastic
"----------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:elm_syntastic_show_warnings = 1


"----------------------------
" Neomake settings
"----------------------------
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']


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
