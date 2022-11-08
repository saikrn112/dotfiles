" Vim-Plug configuration got from https://github.com/junegunn/vim-plug
call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'PhilRunninger/nerdtree-visual-selection'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
" Nord theme
Plug 'arcticicestudio/nord-vim'

" papercolor theme
 Plug 'NLKNguyen/papercolor-theme'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


" Custom configuration
syntax on
set number
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
"set smartindent
set backspace=indent,eol,start
set hlsearch
set laststatus=2
set hidden
set hls
set cursorline
set wildmenu
set wildmode=list:full

" diff highlighting
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" efficient buffer usage and keymappings
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" for split window file open
nnoremap <C-W><C-F> <C-W>vgf

" search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" general cpp path
set path+=/Library/Developer/CommandLineTools/usr/include/c++/**

" for mouse configuration
"set mouse=a

""""" THEME settings START """""""
" dracula theme settings
" packadd! dracula
" colorscheme dracula

let g:lightline = { 'colorscheme': 'PaperColor' }
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
set background=dark
colorscheme PaperColor
""""" THEME settings END
