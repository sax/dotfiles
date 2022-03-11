" Bind a second leader key
map , <leader>

" vim-projectionist: Toggle between test and src files in Elixir
nnoremap <Leader>gt :A<CR>
nnoremap <Leader>gv :AV<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Panes / Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Close the current buffer
map <leader>bd :Bclose<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

