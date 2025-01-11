let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F2> :w
noremap  :Goyo
noremap  :Limelight!!
noremap <Right> :execute "rightbelow vsplit"
nnoremap [15;2~ :!pandoc -dmunka-html.yaml -i % -o %:t:r.html 2>>vimerror.log
nnoremap [1;2S :lprevious
nnoremap [1;2R :cprevious
nnoremap z "zyaW:let @u = eval('(strptime("%Y.%m.%d.",trim("'..@z..'"))-localtime())/86400')
nnoremap t a=strftime("%H:%M")
nnoremap d a=strftime("%Y.%m.%d.")
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap ' :marks:normal! '
nnoremap ,l "_ddP
nnoremap ,w "_dWP
nnoremap ,pw "_dwP
nnoremap ,P "_Dp
nnoremap ,cw "_dwPa
nnoremap ,C "_DpA
nnoremap ,b :buffers:b 
map ,L :Lexplore!
nnoremap J mzJ`z
nnoremap N Nzzzv
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \c :Current
nnoremap \w :Work
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap ` :marks:normal! `
xmap a% <Plug>(MatchitVisualTextObject)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gp :rightbelow vsplit <cfile>
nnoremap n nzzzv
nnoremap tt !!trans -b
nnoremap yp "*yap
nnoremap ys "*yas
nnoremap yw "*yaW
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <S-F1> :!pandoc --from markdown -i % -s -o %:t:r.pdf 2>> vimerror.log
nnoremap <F5> :!pandoc --from markdown+fancy_lists -i % -s -o %:t:r.docx 2>>vimerror.log
nnoremap <F4> :lnext
nnoremap <F3> :cnext
nnoremap <S-F8> :ReadNowList
nnoremap <F8> :ReadToDoList
noremap <C-W><Right> :execute "rightbelow vsplit"
noremap <C-L> :Limelight!!
noremap <C-G> :Goyo
map <S-F9> :set spell!
map <F9> :set hlsearch!
inoremap n  =strftime("%Y. %B %d. %A")
inoremap t =strftime("%H:%M")
inoremap d =strftime("%Y.%m.%d.")
inoremap '' ”
inoremap , ,u
inoremap ,, „
inoremap . .u
inoremap AA A
inoremap CC C
inoremap DD dd
inoremap II I
inoremap OO O
inoremap SS S
inoremap UU u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set belloff=all
set expandtab
set fileencodings=utf-8,iso-8859-2
set helplang=en
set hidden
set listchars=eol:$,space:·,tab:<->,trail:-
set nomodeline
set path=.,/usr/include,,,**
set ruler
set runtimepath=~/.vim,~/.vim/plugged/numbers.vim,/usr/share/vim/site,/usr/share/vim/vim91,/usr/share/vim/vim91/pack/dist/opt/matchit,/usr/share/vim/site/after,~/.vim/after
set shiftwidth=4
set showcmd
set showmatch
set spellcapcheck=
set spelllang=hu
set splitbelow
set splitright
set statusline=%!py3eval('powerline.new_window()')
set tabline=%!py3eval('powerline.tabline()')
set tabstop=2
set thesaurus=/usr/share/hunspell/th_hu_HU_v2.dat
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Taekwondo/WT/Kyorugi/Translate
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +43 Rules-base.tex
badd +1 1.1.txt
badd +667 Rules-base.log
badd +2 1.i_1.txt
badd +1 2.1.txt
badd +1 2.2.txt
badd +1 2.3.txt
badd +17 4.e_1.txt
badd +1 \?\ OK,\ entering\ \\batchmodemake:\ \*\*\*\ \[Makefile
badd +1 4.e_2.txt
badd +1 4.e_3.txt
badd +1 4.2.txt
badd +1 4.2.1.txt
badd +1 4.2.1.1.txt
badd +1 4.2.2.txt
badd +1 4.2.3.txt
badd +1 4.2.4.txt
badd +1 4.2.5.txt
badd +30 4.2.5.1.txt
badd +18 4.2.5.2.txt
badd +1 4.2.5.3.txt
badd +1 4.3.txt
badd +1 4.3.1.txt
badd +1 4.3.2.txt
badd +1 4.3.3.txt
badd +1 4.3.4.txt
badd +1 4.e_4.txt
badd +1 4.e_5.txt
badd +1 4.e_6.txt
badd +8 4.e_7.txt
badd +1 4.e_8.txt
badd +1 4.e_9.txt
badd +1 4.e_10.txt
badd +1 6.1.txt
badd +1 6.1.1.txt
badd +1 6.1.2.txt
badd +1 6.2.txt
badd +1 6.2.1.txt
badd +1 6.2.2.txt
badd +1 6.3.txt
badd +1 6.4.txt
badd +1 6.5.txt
badd +1 6.i_1.txt
badd +1 6.e_1.txt
badd +1 7.1.txt
badd +1 7.1.1.txt
badd +1 7.1.2.txt
badd +1 7.1.3.txt
badd +1 7.2.txt
badd +1 8.1.txt
badd +1 8.2.txt
badd +1 8.3.txt
badd +0 9.1.txt
argglobal
%argdel
$argadd Rules-base.tex
edit Rules-base.tex
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe '2resize ' . ((&lines * 11 + 27) / 54)
argglobal
balt \?\ OK,\ entering\ \\batchmodemake:\ \*\*\*\ \[Makefile
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'plaintex'
setlocal filetype=plaintex
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\\\input
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=hu
setlocal spelloptions=
setlocal statusline=%!py3eval('powerline.statusline(1)')
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'plaintex'
setlocal syntax=plaintex
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 183 - ((19 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 183
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("9.1.txt", ":p")) | buffer 9.1.txt | else | edit 9.1.txt | endif
balt 8.3.txt
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*,n:>
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=hu
setlocal spelloptions=
setlocal statusline=%!py3eval('powerline.statusline(2)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe '2resize ' . ((&lines * 11 + 27) / 54)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
