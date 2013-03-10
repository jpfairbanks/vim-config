filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Code Folding
set foldmethod=indent
set foldlevel=99

"Window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Task Lists
map<leader>td <Plug>TaskList

" Revision History
map <leader>g :GundoToggle<CR>

" Syntax Highlighting and Validation
syntax on
filetype on
filetype plugin indent on
"TODO: check to see if I want this
"let g:pyflakes_use_quickfix = 0
"consistency checker
let g:pep8_map='<leader>8'
" Tab completion and such
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
"<leader>pw will open a window for python documentations of modules

" Code Navigation
" mnibufexpl makes tabs unneccessary
" :b name tab completes
" use :bd or :bw to close a buffer
" Fuzzy text matching using commad-t which uses rake
"
map <leader>d :NERDTreeToggle<CR>
" Refactoring and Goto definition
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!

" # Version Control
" fugitive.vim and git.vim
" TODO: add %{fugitive#statusline()} to my status line
" TODO: make a status line
" TODO: integrate with testing frame work go to the website to find the docs
