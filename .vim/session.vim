let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Down> coc#pum#visible() ? coc#pum#next(0) : "\<Down>"
inoremap <silent> <expr> <Up> coc#pum#visible() ? coc#pum#prev(0) : "\<Up>"
inoremap <silent> <expr> <C-E> coc#pum#visible() ? coc#pum#cancel() : "\"
inoremap <silent> <expr> <C-Y> coc#pum#visible() ? coc#pum#confirm() : "\"
inoremap <silent> <expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
inoremap <silent> <expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <C-Tab> 
imap <S-Tab> <Plug>SuperTabBackward
map! <D-v> *
vmap  :w !pbcopy
nmap  <Plug>DWMClose
nmap  <Plug>DWMShrinkMaster
nmap 	 :call SwitchBuffer()
nnoremap <NL> w
nnoremap  W
nmap  <Plug>DWMGrowMaster
nmap  <Plug>DWMNew
nnoremap <silent>  :FZF
map \n :NERDTreeToggle
vnoremap <silent> \a :Align
nmap \cc <Plug>NERDCommenterComment
xmap \cc <Plug>NERDCommenterComment
nmap \c  <Plug>NERDCommenterToggle
xmap \c  <Plug>NERDCommenterToggle
nmap \cm <Plug>NERDCommenterMinimal
xmap \cm <Plug>NERDCommenterMinimal
nmap \cn <Plug>NERDCommenterNested
xmap \cn <Plug>NERDCommenterNested
nmap \c$ <Plug>NERDCommenterToEOL
nmap \ci <Plug>NERDCommenterInvert
xmap \ci <Plug>NERDCommenterInvert
nmap \cs <Plug>NERDCommenterSexy
xmap \cs <Plug>NERDCommenterSexy
nmap \cy <Plug>NERDCommenterYank
xmap \cy <Plug>NERDCommenterYank
nmap \cA <Plug>NERDCommenterAppend
nmap \cl <Plug>NERDCommenterAlignLeft
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cu <Plug>NERDCommenterUncomment
xmap \cu <Plug>NERDCommenterUncomment
nmap \ca <Plug>NERDCommenterAltDelims
nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gf :call OpenTestFileAtLine()
nmap gx <Plug>NetrwBrowseX
xmap gx <Plug>NetrwBrowseXVis
nnoremap <silent> tn :TestNearest
nnoremap <silent> tf :TestFile
nnoremap <silent> tl :TestLast
nnoremap <silent> ta :TestSuite
nnoremap <SNR>93_: :=v:count ? v:count : ''
nmap <C-L> <Plug>DWMGrowMaster
vmap <C-C> :w !pbcopy
nnoremap <silent> <C-P> :FZF
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected', visualmode())
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction', visualmode())
vnoremap <Plug>(coc-codeaction-refactor-selected) :call       CocActionAsync('codeAction', visualmode(), ['refactor'], v:true)
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction', '')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction', 'currline')
nnoremap <Plug>(coc-codeaction-cursor) :call       CocActionAsync('codeAction', 'cursor')
nnoremap <Plug>(coc-codeaction-refactor) :call       CocActionAsync('codeAction', 'cursor', ['refactor'], v:true)
nnoremap <Plug>(coc-codeaction-source) :call       CocActionAsync('codeAction', '', ['source'], v:true)
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
vnoremap <silent> <Plug>(coc-cursors-range) :call CocAction('cursorsSelect', bufnr('%'), 'range', visualmode())
nnoremap <silent> <Plug>(coc-cursors-word) :call CocAction('cursorsSelect', bufnr('%'), 'word', 'n')
nnoremap <silent> <Plug>(coc-cursors-position) :call CocAction('cursorsSelect', bufnr('%'), 'position', 'n')
vnoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Method', 'Function'])
onoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Method', 'Function'])
onoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Interface', 'Struct', 'Class'])
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
tnoremap <silent> <Plug>(fzf-insert) i
tnoremap <silent> <Plug>(fzf-normal) 
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>DWMRotateCounterclockwise :call DWM_Rotate(0)
nnoremap <silent> <Plug>DWMRotateClockwise :call DWM_Rotate(1)
nnoremap <silent> <Plug>DWMNew :call DWM_New()
nnoremap <silent> <Plug>DWMClose :exec DWM_Close()
nnoremap <silent> <Plug>DWMFocus :call DWM_Focus()
nnoremap <silent> <Plug>DWMGrowMaster :call DWM_GrowMaster()
nnoremap <silent> <Plug>DWMShrinkMaster :call DWM_ShrinkMaster()
nnoremap <C-J> w
nnoremap <C-K> W
nmap <C-,> <Plug>DWMRotateCounterclockwise
nmap <C-.> <Plug>DWMRotateClockwise
nmap <C-N> <Plug>DWMNew
nmap <C-C> <Plug>DWMClose
nmap <C-@> <Plug>DWMFocus
nmap <Nul> <Plug>DWMFocus
nmap <C-Space> <Plug>DWMFocus
nmap <C-H> <Plug>DWMShrinkMaster
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#cancel() : "\"
imap 	 <Plug>SuperTabForward
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#confirm() : "\"
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vimbackup
set clipboard=unnamed,unnamedplus
set directory=~/.vimbackup
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:»·,trail:·
set mouse=a
set ruler
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/plugged/vim-colors-solarized
set runtimepath+=~/.vim/plugged/vim-elixir
set runtimepath+=~/.vim/plugged/coc.nvim
set runtimepath+=~/.vim/plugged/coc-elixir
set runtimepath+=~/.vim/plugged/vimerl
set runtimepath+=~/.vim/plugged/fzf
set runtimepath+=~/.vim/plugged/fzf.vim
set runtimepath+=~/.vim/plugged/vim-airline
set runtimepath+=~/.vim/plugged/vim-airline-themes
set runtimepath+=~/.vim/plugged/vim-fugitive
set runtimepath+=~/.vim/plugged/vim-test
set runtimepath+=~/.vim/plugged/typst.vim
set runtimepath+=~/.vim/plugged/vim-gitgutter
set runtimepath+=~/.vim/plugged/nerdtree
set runtimepath+=~/.vim/bundle/ack.vim
set runtimepath+=~/.vim/bundle/dwm.git
set runtimepath+=~/.vim/bundle/elixir-snippets
set runtimepath+=~/.vim/bundle/nerdcommenter
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/peredit.vim
set runtimepath+=~/.vim/bundle/supertab
set runtimepath+=~/.vim/bundle/vim-colors-solarized
set runtimepath+=~/.vim/bundle/vim-elixir
set runtimepath+=~/.vim/bundle/vim-gutentags
set runtimepath+=~/.vim/bundle/vim-pathogen
set runtimepath+=/opt/homebrew/share/vim/vimfiles
set runtimepath+=/opt/homebrew/share/vim/vim91
set runtimepath+=/opt/homebrew/share/vim/vimfiles/after
set runtimepath+=~/.vim/after
set shiftwidth=2
set softtabstop=2
set tabstop=2
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 src/skull/lib/skull/accounts.ex
argglobal
%argdel
$argadd src/skull/
edit src/skull/lib/skull/accounts.ex
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> \hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> \hu <Plug>(GitGutterUndoHunk)
nmap <buffer> \hs <Plug>(GitGutterStageHunk)
xmap <buffer> \hs <Plug>(GitGutterStageHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
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
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*\ %s\ */
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
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
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
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
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=~/src/skull/tags,./tags,tags
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
silent! normal! zE
let &fdl = &fdl
let s:l = 103 - ((48 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 103
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOS
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
