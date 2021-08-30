set scrolloff=8
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=UTF-8


call plug#begin('~/.vim/plugged')
"here goes the auto close tags for HTML and JSX plug in
Plug 'alvan/vim-closetag'
"here goes the javaScript plugin
Plug 'pangloss/vim-javascript'
"the fuzzy finder plugin goes here
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} 
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json']  

"prettier and nerd stuff goes here
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug  'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

"some random shit here
Plug 'jiangmiao/auto-pairs' 
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sbdchd/neoformat'
"this the tab autocomplete plugIn
Plug 'ervandew/supertab'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

"make the tab autocomplete work top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

autocmd BufWritePre *.js Neoformat

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


let mapleader= " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR> 
"herrrrrrrrrrrrrrrrrrrrr
nnoremap <C-p>  :GFiles<CR> 
nnoremap <leader>pf :Files<CR> 
imap jj <Esc>
" enable true colors support
nmap <c-s> :w<CR> 
imap <c-s> <Esc>:w<CR>
" enable true colors support
imap <c-l> <Esc><c-w>l
nmap <c-l> <c-w>l
" enable true colors support
imap <leader>p <Esc>:Prettier<CR>
nmap <leader>p :Prettier<CR>
" this the remap of <alt> 1 
nmap <M-1> :NERDTree<CR>
"controll-b mopping goes here
map <c-b> <Esc><c-w>o



"..........................................................
"----------------------------------------------------------
"..........................................................
"this is a config for the auto close plug in
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

