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
 
" --------------------------------------------------------
" Mappings
" --------------------------------------------------------

" Search for visual selected text
"" To search select the word and press //
vnoremap // y/<C-R>"<CR>

" Map NERDTree to <f4>
map <F4> :NERDTreeToggle<CR>

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" -------------------------------------------------------
"" Pluggins
"" -------------------------------------------------------

call plug#begin('~/.vim/plugged')
  
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
