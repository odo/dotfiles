set nocompatible

" Initialize Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Plugins
call plug#begin()

" List your plugins here
Plug 'altercation/vim-colors-solarized'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'kaarmu/typst.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Colorscheme
set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256

" Add line numbers
set number
set ruler

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Search related settings
set incsearch
set hlsearch

" Map Ctrl+l to clear highlighted searches
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
"remap ctag ascending
"nnoremap <C-[> <C-t>

" Highlight characters behind the 80 chars margin
" :au BufWinEnter * let w:m2=matchadd('ColumnMargin', '\%>80v.\+', -1)

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" make uses real tabs
au FileType make set noexpandtab

" Erlang uses 4 spaces
au FileType erlang set softtabstop=4 tabstop=4 shiftwidth=4

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let g:erlangCheckFile = "~/.vim/bundle/vimerl/compiler/erlang_check_file.erl"
let g:erlangHighlightErrors = 1


" Add the following below if you want to generate ctags upon saving a file
" Auto-generate ctags upon making changes to a file
" autocmd BufWritePost *.erl :silent !(cd %:p:h;ctags *)&

" share the clipboard with OS X
set clipboard^=unnamed,unnamedplus
vmap <C-c> :w !pbcopy<CR><CR>

" Enable mouse support in all modes
set mouse=a

" switching buffers
function SwitchBuffer()
  b#
endfunction

nmap <Tab> :call SwitchBuffer()<CR>

" align
command! -nargs=? -range Align <line1>,<line2>call AlignSection('<args>')
vnoremap <silent> <Leader>a :Align<CR>
function! AlignSection(regex) range
  let extra = 1
  let sep = empty(a:regex) ? '=' : a:regex
  let maxpos = 0
  let section = getline(a:firstline, a:lastline)
  for line in section
    let pos = match(line, ' *'.sep)
    if maxpos < pos
      let maxpos = pos
    endif
  endfor
  call map(section, 'AlignLine(v:val, sep, maxpos, extra)')
  call setline(a:firstline, section)
endfunction

function! AlignLine(line, sep, maxpos, extra)
  let m = matchlist(a:line, '\(.\{-}\) \{-}\('.a:sep.'.*\)')
  if empty(m)
    return a:line
  endif
  let spaces = repeat(' ', a:maxpos - strlen(m[1]) + a:extra)
  return m[1] . spaces . m[2]
endfunction

" YAMl
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" COC
nmap <silent> gd <Plug>(coc-definition)

" FZF
nnoremap <silent> <C-p> :FZF<CR>
let $FZF_DEFAULT_OPTS = '--preview "bat --style=numbers --color=always {} | head -n 100"'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

" Airline
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='luna'

" vim-test
let test#strategy = 'vimterminal'
let g:test#basic#open_on_error = 1

" Some curson massaging
let &t_SI = "\e[5 q"  " Blinking line cursor for insert mode
let &t_EI = "\e[1 q"  " Block cursor for normal mode
let &t_SR = "\e[3 q"  " Blinking block cursor for replace mode

" Run the nearest test (the test under the cursor)
nnoremap <silent> tn :TestNearest<CR>

" Run the entire test file
nnoremap <silent> tf :TestFile<CR>

" Run the last test
nnoremap <silent> tl :TestLast<CR>

" Run the entire test suite
nnoremap <silent> ta :TestSuite<CR>

function! OpenTestFileAtLine()
  " Get the current line under the cursor
  let l:line = getline('.')

  " Use a regular expression to match leading spaces, project name/version, file path, and line number
  let l:match = matchlist(l:line, '\v(\S+):(\d+)')

  " Check if the pattern matches
  if len(l:match) > 0
    " Extract the file path and line number
    let l:file = l:match[1]
    let l:line_number = l:match[2]

    " Open the file and jump to the line number
    exec 'e ' . l:file
    exec l:line_number
  else
    echo "No file and line number found"
  endif
endfunction

nnoremap <silent> gf :call OpenTestFileAtLine()<CR>

" ELP
if executable('elp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'elp',
        \ 'cmd': {server_info->['elp', 'server']},
        \ 'allowlist': ['erlang'],
        \ })
endif

" Autocomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" 80 column mark
highlight ColorColumn ctermbg=23
let &colorcolumn=join(range(81,81),",")
