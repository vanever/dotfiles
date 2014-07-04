" g iswindows defin
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

filetype plugin on
filetype plugin indent on

"set guifont=Consolas\ 12
if (g:iswindows == 1)
	set guifont=Consolas:h11.5
	"set guifont=Ubuntu\ Mono:h13
	"set guifont=DejaVu\ Sans\ Mono:h11
else
	"set guifont=DejaVu\ Sans\ Mono:h13
	"set guifont=DejaVu\ Sans\ Mono\ 13
	"set guifont=Menlo:h13
	set guifont=Monaco:h13
	"set guifont=Consolas:h16
	"set guifont=Courier\ New:h13
	"set gfw=Microsoft\ YaHei:h12 "
endif

set showcmd
set showmode
set nocompatible
set magic
set ruler "??????息
set autoindent
set sw=4
set ts=4
"set expandtab
set dy=lastline "??示?????校?????@@
set number
set bsdir=last
set cin
set termencoding=utf-8
set ffs=unix,dos ff=unix

" encoding
"set fileencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

call pathogen#infect()

" auto change dir
"set autochdir

" fold
set nofen "no fold when opening file
set foldmethod=marker

" ???? TAB ??示效??
" set list
" set listchars=tab:>-,trail:-

"??????????????
set backspace=indent,eol,start
"colo zenburn
colo molokai
" colo van
"colo murphy
sy on
set go= "?薏说???????栏

set nobackup
set hlsearch
set showmatch
"tab mappings
map  <D-1> 1gt
map  <D-2> 2gt
map  <M-3> 3gt
map  <M-4> 4gt
map  <M-5> 5gt
map  <M-6> 6gt
map  <M-7> 7gt
map  <M-8> 8gt
map  <M-9> 9gt
map  <M-t> :tabnew<CR>
map  <M-w> :tabclose<CR>
map! <M-1> <esc>1gt
map! <M-2> <esc>2gt
map! <M-3> <esc>3gt
map! <M-4> <esc>4gt
map! <M-5> <esc>5gt
map! <M-6> <esc>6gt
map! <M-7> <esc>7gt
map! <M-8> <esc>8gt
map! <M-9> <esc>9gt
map! <M-t> <esc>:tabnew<CR>
map! <M-w> <esc>:tabclose<CR>

"map
let mapleader=','
if g:iswindows == 1
	" code
	noremap <leader>ss :source d:\\Program\ Files\ \(x86\)\\Vim\\_vimrc<CR>
	noremap <leader>ee :e      d:\\Program\ Files\ \(x86\)\\Vim\\_vimrc<CR>
else
	noremap <leader>ss :source ~/.vimrc<CR>
	noremap <leader>ee :e ~/.vimrc<CR>
endif

noremap <leader>y  "+y
noremap <leader>p  "+p
noremap <leader>,  :nohlsearch<CR>
noremap <leader>fl :NERDTreeToggle<CR>
noremap <leader>tl :TagbarToggle<CR>

if g:iswindows==0
	" code
	noremap <leader>tt :CommandT<CR>
endif

noremap <leader>cd :cd %:p:h<CR>

noremap <leader>fm :%s/\(\S\){/\1 {/g<CR>
noremap <leader>fn :%s/\([^ \t{]\)}/\1 }/g<CR>

inoremap <C-J> <LEFT>
inoremap <C-K> <RIGHT>

" ctags
"noremap <leader>ct :!ctags -R --c++-kinds=-p --fields=+iaS --extra=+q<CR>
noremap <leader>ct :!ctags -R --fields=+iaS --extra=+q<CR>
"noremap <leader>ct :!ctags -R --fields=+iaS --extra=+q<CR>
if g:iswindows==0
	" code
	set tags+=~/.vim/tags/stl.tags " STL tags
endif
" set tags+=~/.vim/tags/boost
set tags+=./tags

" NERDTree width
let g:NERDTreeWinSize = 23

" cpp complete
let OmniCpp_SelectFirstItem = 2 " select it but not insert
"let OmniCpp_ShowPrototypeInAbbr = 0
"let OmniCpp_MayCompleteScope = 1 " original is 0
set completeopt=menu " no longest for we wanna support select first automatically
let OmniCpp_DefaultNamespaces = ["std"]

" ctags
set csto=1
set cst

" Doxygen
let g:DoxygenToolkit_authorName = "Chaofan Yu"
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre = ""
let g:DoxygenToolkit_compactOneLineDoc = "yes"
let g:DoxygenToolkit_compactDoc = "yes"
noremap <leader>df    :Dox<CR>
noremap <leader>da    :DoxAuthor<CR>
noremap <leader>dc    O//! 
noremap ' ,

" cscope
noremap <leader>sc   :call CreateCscopeTag()<CR>
noremap <leader>xc   :cs add cscope.out<CR>

" size
noremap <leader>vi :vert resize +10<CR>
noremap <leader>vd :vert resize -10<CR>

"au GUIEnter * colo evening
" au GUIEnter * colo selin

"let g:zenburn_high_Contrast = 1
au GUIEnter * colo zenburn
au GUIEnter * colo molokai

"au GUIEnter * colo murphy
"au GUIEnter * colo desert
"au GUIEnter * set guifont=Monospace\ 13
"au GUIEnter * set guifont=Consolas\ 12

if g:iswindows==0
	autocmd GUIEnter * call Maximize_Window()
endif


" clang
let g:clang_auto_select=1
"let g:clang_snippets=1
"let g:clang_library_path="/usr/lib"
"let g:clang_use_library=1
"
" enhanced commenter
" comment"
vnoremap ,mm <Esc><Esc>:call EnhancedCommentify('yes','comment',line("'<"),line("'>"))<CR>
" uncomment"
vnoremap ,nn <Esc><Esc>:call EnhancedCommentify('yes','decomment',line("'<"),line("'>"))<CR>
let g:EnhCommentifyPretty = 'yes'
let g:EnhCommentifyCommentsOp = 'yes'
let g:EnhCommentifyMultiPartBlocks = 'yes'

" iinput-method auto control
" set imd
" au! InsertEnter * se noimd
" au! InsertLeave * se imd
" au! FocusGained * se noimd 

set noimd
set imactivatekey=S
if has("gui_running")
	set imi=2
	set ims=2
endif

" set imd
" set imi=2
" set ims=2

" set noimd
" set imi=2
" set ims=2

"if has("gui_running")
"set imactivatekey=S
"inoremap <ESC> <ESC>:set iminsert=2<CR>
"endif

" cscope solution for autochdir
if filereadable("tags")
    exec 'set tags+='.expand("%:p:h").'/tags'
endif

" let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"} 
"

iabbrev #c /////////////////////////////////////////////////////////////////////////////////////////
iabbrev #d //---------------------------------------------------------------------------------------
iabbrev #b /**********************************************************
iabbrev #e <Space>**********************************************************/

" disable octal
set nrformats-=octal

" CTRLP
let g:ctrlp_map='<F1>'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.o,*.obj

" PLUGIN
" MINI BUFFER
let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
