nnoremap <F2> <F2> : vsplit <CR>
nnoremap <F3> :TlistToggle <CR>
nnoremap <F4> :NERDTree <CR>
autocmd VimEnter * NERDTree
map <Tab><Tab> <C-W>w
map <silent> <F4> :NERDTreeToggle<CR>
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


execute pathogen#infect()


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""syntastic plugin"""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0 


"""fuzzyfinder"""
set rtp+=~/.fzf

"""ctrlp"""
set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax enable
