set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set noswapfile
set nobackup
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes

call plug#begin('~/.vim/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " CoC extensions needed

Plug 'jiangmiao/auto-pairs' 
Plug 'alvan/vim-closetag'

let g:closetag_filenames = '*.html, *.jsx, *.tsx'

" these plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" debugger
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
call plug#end()

colorscheme gruvbox

let mapleader = " "

" Telescope remaps
nnoremap <leader>sf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>sw :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<CR>

" CoC remaps
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>e <Cmd>CocCommand explorer<CR>

