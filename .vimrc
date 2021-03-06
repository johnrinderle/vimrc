set rtp+=/usr/local/opt/fzf
execute pathogen#infect()

set background=dark
colorscheme solarized

set nu
set list
set showmatch
set hlsearch
set ignorecase
set smartcase

filetype plugin indent on
set autoindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype xml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype java setlocal ts=4 sts=4 sw=4 noexpandtab

set clipboard=unnamed

let mapleader=","
nmap <leader>hs :set hlsearch! hlsearch?<CR>
nmap <leader>rt :retab<CR> :%s/\s\+$//e<CR>
nmap <leader>rf :retab<CR> :%s/\s\+$//e<CR> mzgg=G`z<CR>
nmap <leader>\ :Ack!<Space>
nmap <leader>tb :TagbarToggle<CR>
nmap <leader>lc :lclose<CR>
nmap <leader>lo :lopen<CR>

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let NERDTreeShowHidden=1

" syntastic
" let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'python', 'pylint']
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" http://pep8.readthedocs.org/en/latest/intro.html
" E501: line too long (> 79 characters)
" E231: missing whitespace after ','
let g:syntastic_python_flake8_args='--ignore=E501,E231'

" http://pylint-messages.wikidot.com/all-codes
" C0301: line too long
let g:syntastic_python_pylint_args='--disable=C0301'

" use ag for locating files
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'

" use ag for searching
let g:ackprg = 'ag --nogroup --nocolor --column --silent'
