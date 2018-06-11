" Install vimplug
let vimplug=expand('~/.vim/plugged/vim-plug/plug.vim')
if !filereadable(vimplug)
	echo "Instaling vim-plug..."
	echo ""
	silent !mkdir -p ~/.vim/
	silent !git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug
	let g:first_time_run=1
endif

source ~/.vim/plugged/vim-plug/plug.vim

"" -------------------------------------------------------
"" Pluggins
"" -------------------------------------------------------

call plug#begin('~/.vim/plugged')
    
    "" Lint
    Plug 'w0rp/ale'

    "" Parentheses and stuff
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'

    "" NERDTree 
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    "" Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "" Go lang
    Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

    "" Theme
    Plug 'matheusbsilva/Alduin'

    "" Tests
    Plug 'janko-m/vim-test'

    "" Commentary
    Plug 'tpope/vim-commentary'

    "" Html, CSS and JS
    Plug 'mattn/emmet-vim'  
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'hail2u/vim-css3-syntax', { 'for': 'css'}
    Plug 'othree/csscomplete.vim', { 'for': 'css' }
	Plug 'othree/html5.vim'
	Plug 'othree/yajs.vim', { 'for': 'javascript' }
	Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
	Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
    Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
    Plug 'lepture/vim-jinja'

    "" TypeScript
    Plug 'mhartington/nvim-typescript', { 'do': 'UpdateRemotePlugins' }
    Plug 'HerringtonDarkholme/yats.vim', {'for': 'typescript'}

    "" Jsx
    Plug 'mxw/vim-jsx'

    "" Git 
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    " python
    "" Python Bundle
    Plug 'davidhalter/jedi-vim'
    Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
    Plug 'hdima/python-syntax'

    "" Fzf vim
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'

    "" Supertab
    Plug 'ervandew/supertab'

    "" Markdown live preview
    Plug 'shime/vim-livedown'

    "" Nginx
    Plug 'chr4/nginx.vim'

	"" Completation for NeoVim
	if has('nvim')
		Plug 'roxma/nvim-completion-manager'
	endif

    call plug#end()

""-------------------------------------------------------
"" General configuration
""-------------------------------------------------------

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

" Configure tab and indents to have a width of 4
set tabstop=4       
set shiftwidth=4    
set softtabstop=4   

" Expand TABs to spaces
set expandtab       

" Backspace configuration  
set backspace=2
set backspace=indent,eol,start


" Alduin theme configuration
let g:alduin_Shout_Become_Ethereal = 1
let g:alduin_Shout_Fire_Breath = 1
let g:airline_theme='alduin'
colorscheme alduin 

" Git update time on file
set updatetime=250 

" Show the line number
set number

" Relative number of lines
set relativenumber

" Encoding 
set encoding=utf-8

" Airline fonts configuration
let g:airline_powerline_fonts=1

" Remove swp files
set nobackup
set noswapfile 

" Reload files automatically
set autoread
au FocusGained,BufEnter * :checktime

"" Unify clipboards
set clipboard+=unnamedplus

" Enable python highlight
let python_highlight_all = 1
 
" Jedi-vim configuration
let g:jedi#show_call_signatures = 2
let g:jedi#popup_on_dot = 0
autocmd FileType python setlocal completeopt-=preview

"" python supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"" Html and Css
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

" for python completions
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
" language specific completions on markdown file
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')

"" Jsx config
let g:jsx_ext_required = 0

"Vim-test configuration
"" Test strategies
let test#strategy = {
	\ 'nearest': 'neovim',
	\ 'file': 'neovim',
	\ 'suite': 'neovim',
\}
let test#python#runner = 'pytest'

"" Markdown live configuration
" the browser to use
let g:livedown_browser = "google-chrome"

" the port on which Livedown server will run
let g:livedown_port = 1337


autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType conf setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType yml setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 shiftround expandtab

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm, *.jinja2 set ft=jinja
"" --------------------------------------------------------
"" Mappings
"" --------------------------------------------------------

" Search for visual selected text
"" To search select the word and press //
vnoremap // y/<C-R>"<CR>

nnoremap ; :

" Map NERDTree to <f4>
map <F4> :NERDTreeToggle<CR>

" Map paste mode 
set pastetoggle=<F2>

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ; :

"" Mappings for vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

"" Map return to normal mode from terminal mode
tmap <C-o> <C-\><C-n>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"" Markdownlive preview
nmap gm :LivedownToggle<CR>

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" Fzf config
" ctrlp mapping to FZF fuzzy file finder
" http://www.devinmorgenstern.com/2016/02/16/ditching-ctrl-p/
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <silent> <leader>f :Ag<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
