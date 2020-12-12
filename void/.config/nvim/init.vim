set termguicolors
set number relativenumber
set mouse=a
set clipboard+=unnamedplus
set splitbelow splitright
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab
set cursorline
set ignorecase
set smartcase
set hidden


call plug#begin ()
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
call plug#end()

imap <expr> <C-j> vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<C-j>"
imap <expr> <C-k> vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)"      : "<C-k>"

nnoremap <C-t> :!touch<Space>
nnoremap <C-e> :tabe %:h<CR>
nnoremap <C-d> :!mkdir<Space>
nnoremap <C-m> :!mv<Space>%<Space>

autocmd InsertEnter * norm zz

