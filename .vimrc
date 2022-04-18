set noshowmode
set laststatus=1        " always show statusbar
set wildmenu            " enable visual wildmenu
set nocompatible        " disable vi compatibility mode
set history=1000        " increase history size
set noswapfile          " don't create swapfiles
set nobackup            " don't backup, use git!
set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set showmatch           " higlight matching parentheses and brackets
let NERDTreeShowHidden=1

packadd asyncomplete
packadd asyncomplete-lsp

"Enable filetype
filetype indent plugin on


" Modify indenting settings
set autoindent              " autoindent always ON.

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

" Colorscheme configuration.
if &t_Co > 2
	syntax on
	color PaperColor
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	set colorcolumn=80

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

