"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set t_Co=256

set background=dark
syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
setlocal cm=blowfish2
set matchpairs=(:),{:},[:],<:>
set autoread
set showmatch
set title

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

let g:syntastic_python_python_exec = '/path/to/python3'

let g:django_projects = '~/devel/django_projects' "Sets all projects under project"
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv"
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root."

let g:syntastic_error_symbol = "☛"
let g:syntastic_warning_symbol = "☞"


inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i
nnoremap <silent> sn :lnext<CR>


let g:jedi#use_tabs_not_buffers = 1

map <C-o> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'tomasr/molokai'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tmhedberg/SimpylFold'
Plug 'sudar/vim-arduino-syntax'
Plug 'mjbrownie/vim-htmldjango_omnicomplete'
Plug 'scrooloose/syntastic'
Plug 'jmcantrell/vim-virtualenv'
Plug 'cwood/vim-django'
Plug 'mattn/calendar-vim'
Plug 'junegunn/vim-github-dashboard'
Plug 'edkolev/tmuxline.vim'

call plug#end()

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_c = airline#section#create(['%{virtualenv#statusline()}'])
let g:airline_theme='dark'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle <CR>

set hidden
nmap <A-Left> :bprevious<CR>
nmap <A-Right> :bnext<CR>
autocmd FileType nerdtree noremap <buffer> <A-Left> <nop>
autocmd FileType nerdtree noremap <buffer> <A-Right> <nop>

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

set cmdheight=1

let g:tmuxline_preset = {
    \'a'                : '#{pane_current_path}',
    \'b disabled'       : '',
    \'c disabled'       : '',
    \'win'              : ['#I', '#W'],
    \'cwin'             : ['#I', '#W'],
    \'x'                : '',
    \'y'                : ['♪ #(exec amixer get Master | egrep -o "[0-9]+%" | egrep -o "[0-9]*")'],
    \'z'                : ['#(whoami)@#(hostname)','#(~/.home/get_ip.sh enp0s25)', '%H:%M.%S'],
    \'options' : {'status-justify': 'left'}}

