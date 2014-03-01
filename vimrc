"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

let mapleader=","

"Sets how many lines of history VIM har to remember
set history=400

"Set to auto read when a file is changed from the outside
set autoread

"Fast saving
nmap <leader>w :w!<cr>

"Set default encryption method, blowfish is stronger that zip
set cryptmethod=blowfish

"Reload vimrc
nmap <leader>so :so ~/.vimrc<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

"Set font to Monaco 10pt
set guifont=Monospace\ 11

if has("gui_running")
  set guioptions-=T
  let psc_style='cool'
  colorscheme evening
else
  set background=dark
  colorscheme desert
endif

"Highlight current
if has("gui_running")
  set cursorline
  hi cursorline guibg=#333333
  hi CursorColumn guibg=#333333
endif

"Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,gbk

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 1 high
set cmdheight=1

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch

""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""
"Always hide the statusline
set laststatus=2

"Format the statusline
set statusline=[%n]%F%y%m%r%h\ %w\ \ CWD:\ %r%h\ \ \ %kLine:%l/%L[%p%%]:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"My information
iab xdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

set completeopt=menu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer realted
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
"set nofen
"set fdl=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set expandtab
set shiftwidth=4
set tabstop=4

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>

set smarttab
set lbr
set tw=500

""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai

"Smart indet
set si

"C-style indeting
set cindent

"Wrap lines
set wrap

"File type indent
filetype plugin indent on

filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For Cope
map <silent> <leader><cr> :noh<cr>

"Orginal for all
map <leader>n :cn<cr>
map <leader>p :cp<cr>
map <leader>c :botright cw 10<cr>
map <c-u> <c-l><c-j>:q<cr>:botright cw 10<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove the Windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>

"Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

"mutt editor setting
au BufRead /tmp/mutt-* set tw=70

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROGRAM 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"c program setting
set makeprg=gcc\ -o\ %<\ %\ -g
map <F9> :w <CR>:make <CR>
map <C-F9> :!./%<<CR>

"python execute
"map <buffer> <F11> :w<CR>:!/usr/bin/env python % <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"minibuffer
let g:miniBufExplMapWindowNavArrows = 1

" Cscope settings
"
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>f :cs find

" I use GNU global instead cscope because global is faster.
set cscopetag
set cscopeprg=gtags-cscope
set cscopequickfix=c-,d-,e-,f-,g0,i-,s-,t-
nmap <silent> <leader>j <ESC>:cstag <c-r><c-w><CR>
nmap <silent> <leader>g <ESC>:lcs f c <c-r><c-w><cr>:lw<cr>
nmap <silent> <leader>s <ESC>:lcs f s <c-r><c-w><cr>:lw<cr>
command! -nargs=+ -complete=dir FindFiles :call FindFiles(<f-args>)
au VimEnter * call VimEnterCallback()
"au BufAdd *.[ch] call FindGtags(expand('<afile>'))
au BufWritePost *.\(c\|h\|cpp\|hpp\) call UpdateGtags(expand('<afile>'))
 
function! FindFiles(pat, ...)
     let path = ''
     for str in a:000
         let path .= str . ','
     endfor
 
     if path == ''
         let path = &path
     endif
 
     echo 'finding...'
     redraw
     call append(line('$'), split(globpath(path, a:pat), '\n'))
     echo 'finding...done!'
     redraw
endfunc
 
function! VimEnterCallback()
     for f in argv()
         if fnamemodify(f, ':e') != 'c' && fnamemodify(f, ':e') != 'h' && fnamemodify(f, ':e') != 'cpp' 
             continue
         endif
 
         call FindGtags(f)
     endfor
endfunc
 
function! FindGtags(f)
     let dir = fnamemodify(a:f, ':p:h')
     while 1
         let tmp = dir . '/GTAGS'
         if filereadable(tmp)
             exe 'cs add ' . tmp . ' ' . dir
             break
         elseif dir == '/'
             break
         endif
 
         let dir = fnamemodify(dir, ":h")
     endwhile
endfunc
 
function! UpdateGtags(f)
     let dir = fnamemodify(a:f, ':p:h')
     exe 'silent !cd ' . dir . ' && global -u &> /dev/null &'
endfunction
