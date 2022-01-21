" Bind a second leader key
map , <leader>

" vim-projectionist: Toggle between test and src files in Elixir
nnoremap <Leader>gt :A<CR>
nnoremap <Leader>gv :AV<CR>

" Fast saving
nmap <leader>w :wa<cr>

" quick-edit vimrc (http://learnvimscriptthehardway.stevelosh.com/chapters/07.html)
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>sv :source $MYVIMRC<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Panes / Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nmap <leader>v :vsplit <cr>
nmap <leader>% :vsplit <cr>
" nmap <leader>s :split <cr>
nmap <leader>- :split <cr>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => grep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gr :Ggrep <cword><CR>

" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting / Completion / Snippets / LSP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use `[d` and `]d` to navigate diagnostics (`e` jumps directly to errors)
nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]e <Plug>(coc-diagnostic-next-error)
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)
nmap <silent> <leader>e <Plug>(coc-diagnostic-info)
nnoremap <silent> <leader>d  :<C-u>CocList -A --normal diagnostics<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sidebar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader><tab> :SidebarNvimToggle<CR>
