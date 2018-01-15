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
  
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'matheusbsilva/Alduin'

    Plug 'tpope/vim-commentary'

    Plug 'hdima/python-syntax'

    Plug 'airblade/vim-gitgutter'
    
    "" Html and CSS
    Plug 'mattn/emmet-vim'  

    "" Typescript
    Plug 'leafgarland/typescript-vim'

call plug#end()

""-------------------------------------------------------
"" General configuration
""-------------------------------------------------------

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

" Enable python highlight
let python_highlight_all = 1
 
" Jedi-vim configuration
let g:jedi#show_call_signatures = 2
let g:jedi#popup_on_dot = 0
autocmd FileType python setlocal completeopt-=preview

"" --------------------------------------------------------
"" Mappings
"" --------------------------------------------------------

" Search for visual selected text
"" To search select the word and press //
vnoremap // y/<C-R>"<CR>

" Map NERDTree to <f4>
map <F4> :NERDTreeToggle<CR>

" Map paste mode 
set pastetoggle=<F2>

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
