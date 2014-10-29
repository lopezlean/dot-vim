syntax on

let mapleader=","


" TAB versus spaces
function! Tabs()
    set noexpandtab		" Treat TAB as TABS
    set tabstop=4		" TAB is actually 4 spaces
    set shiftwidth=4	" Doing >> on a block whill shift it one tab (based on ts setting above)
    set softtabstop=4   " makes the spaces feel like real tabs
endfunction

" SPACES versus tabs
function! Spaces()
    set expandtab		" Treat TAB as spacesa
    set tabstop=4		" TAB is actually 4 spaces
    set shiftwidth=4	" Doing >> on a block whill shift it one tab (based on ts setting above)
    set softtabstop=4   " makes the spaces feel like real tabs
endfunction

"NERDTree navigation
map <leader>e :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
" NERDTree
:let NERDChristmasTree=1
:let NERDTreeCaseSensitiveSort=1
:let NERDTreeChDirMode=2
:let NERDTreeBookmarksFile = $HOME . "/.vim/NERDTreeBookmarks"
:let NERDTreeShowBookmarks=1
:let NERDTreeShowHidden=1
:let NERDTreeQuitOnOpen=1

" Syntastic
let g:syntastic_auto_loc_list=1 " Auto-open error window if errors are detected
let g:syntastic_enable_signs=1
let g:syntastic_c_check_header=1
let g:syntastic_c_no_include_search = 1 " Disable the search of included header files after special libraries
let g:syntastic_c_auto_refresh_includes=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" JSLint
let g:JSLintHighlightErrorLine=1

" Disable PHPQA by default
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codecoverage_autorun = 0
let g:phpqa_codesniffer_autorun = 0

if has('gui_running')
	set background=light
	set t_Co=256
	colorscheme solarized
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scroll bar
else
	set background=dark
	set t_Co=256
	colorscheme neverland-darker
endif

"paththogen
filetype off
call pathogen#infect()
"call pathogen#helptags() "call this when installing new plugins 
filetype plugin on

